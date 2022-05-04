# DataStreamMysqlToBigQuery
<p align="center"><img src="https://i.imgur.com/7lCeTLU.png" alt="MySQL to Google BigQuery Logo" /></p>

<h1 align="center">DataStream MySQL to Google BigQuery</h1>

<p align="center"><a href="database-sample/HPMS.sql">Click here to view a brief description on how Datastream was utilized.</a></p>

## Table of Contents
+ [What you'll do](#what-youll-do)
+ [How it works](#how-it-works)
+ [Requirements](#requirements)
+ [Usage](#usage)
+ [Credits](#credits)
+ [License](#license)

## What you'll do

+ Prepare a MySQL RDS  instance from AWS and configure it for MySQL database

+ Create a GCS bucket to be used in replication

+ Create a Pub/Sub topic, subscription, and a GCS Pub/Sub notification policy

+ Create a Datastream connection profile referencing the MySQL DB

+ Create a Datastream connection profile referencing the GCS destination

+ Create a Pub/Sub resources and a GCS Pub/Sub notification policy

+ Create a Datastream stream and start replication

+ Create a BigQuery dataset

+ Deploy a Dataflow job to replicate data

## How it works
<p align="center"><img src="https://i.imgur.com/NKYv3Zp.gif" alt="MySQL to Google BigQuery Logo" /></p>

<p align="left"><img src="https://i.imgur.com/CBhoEVh.png" alt="MySQL to Google BigQuery Logo" /></p>
Steps for Preparing MySQL database:

+ <p align="left"><a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html">Create RDS MySQL database instance from Amazon.</a></p>

+ Create Schema with your data.<p align="left"><a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateDBInstance.html"> -> Here is some test data already created if you prefer.</a></p>

+ <p align="left"><a href="https://cloud.google.com/datastream/docs/configure-your-source-mysql-database#rdsformysql">Configure your source MySQL database.</a></p>



# Create a GCS bucket 
Run the following to create a Cloud Storage bucket
```
gsutil mb gs://${BUCKET_NAME}
```

# Create Pub/Sub resources 
Run the following to create a Pub/Sub topic and Pub/Sub subscription inside Cloud Shell console.
Replace topic name  and BUCKET_NAME with yours.
```
gcloud pubsub topics create <topic name>
gcloud pubsub subscriptions create datastream-subscription --topic=<topic name>
gsutil notification create -f "json" -p "data/" -t "<topic name>" "gs://${BUCKET_NAME}"
```
# Enable Datastream API
<p align="left"><img src="https://i.imgur.com/tqBBks2.png" alt="This allows you to create and use Datastream" /></p>

# Create Connection Profiles
Create two connection profiles, one for the MySQL source, and another for the Cloud Storage destination.
<p align="left"><img src="https://i.imgur.com/Noo6nYu.png" alt="In Datastream Click on Connection profiles" /></p>

# MySQL connection profile
Select MySQL for first one and enter your Amazon RDS connection details.
Note: 
Click CONTINUE.
Leave the encryption as NONE. 
Click CONTINUE.Select the IP allowlisting connectivity method, and click CONTINUE.
<p align="left"><img src="https://i.imgur.com/leAREla.png" alt="Select MySQL" /></p>


# Cloud Storage connection profile
<p align="left"><img src="https://i.imgur.com/Nz6r3zT.png" alt="Select Cloud Storage" /></p>

+ Select Cloud Storage connection profile type.
+ Use gcs-cp as the name and ID for your connection profile.
+ Choose the bucket created earlier, and enter /data as the connection profile path prefix.

# Create the Stream
Create the stream which connects the connection profiles created above and defines the configuration for the data to stream from source to destination.
<p align="left"><img src="https://i.imgur.com/ixLrPYr.png" alt="Click Create Stream top right" /></p>
<p align="left"><img src="https://i.imgur.com/ixLrPYr.png" alt="Select MySQL for Source and Cloud Storage for Destination Type" /></p>
Select the MySQL Connection Profile you created in the previous step. You can test connectivity by clicking RUN TEST, then click Continue once the test passes.
<p align="left"><img src="https://i.imgur.com/eBbmQum.png" alt="Select MySQL for Source and Cloud Storage for Destination Type" /></p>
<p align="left"><img src="https://i.imgur.com/tOvttXY.png" alt="Mark the tables you want to replicate - for this lab, only replicate the test database, then click CONTINUE." /></p>
Select the Cloud Storage bucket you created in the previous step, then click CONTINUE.
Do not add any stream path in the next step, you will use the path defined in the Connection Profile.
<p align="left"><img src="https://i.imgur.com/kxtFdOl.png" alt="Select MySQL for Source and Cloud Storage for Destination Type" /></p>
Finally, validate the stream details by clicking on RUN VALIDATION. Once validation completes successfully, click CREATE AND START.

# Create a BigQuery dataset
Using Cloud Shell, run the following bq command.
```
bq mk dataset
```
# Deploy Dataflow job
```
gcloud services enable dataflow.googleapis.com
gcloud beta dataflow flex-template run datastream-replication \
        --project="${PROJECT_ID}" --region="us-central1" \
        --template-file-gcs-location="gs://dataflow-templates-us-central1/latest/flex/Cloud_Datastream_to_BigQuery" \
        --enable-streaming-engine \
        --parameters \
inputFilePattern="gs://${BUCKET_NAME}/data/",\
gcsPubSubSubscription="projects/${PROJECT_ID}/subscriptions/datastream-subscription",\
outputProjectId="${PROJECT_ID}",\
outputStagingDatasetTemplate="dataset",\
outputDatasetTemplate="dataset",\
outputStagingTableNameTemplate="{_metadata_schema}_{_metadata_table}_log",\
outputTableNameTemplate="{_metadata_schema}_{_metadata_table}",\
deadLetterQueueDirectory="gs://${PROJECT_ID}/dlq/",\
maxNumWorkers=2,\
autoscalingAlgorithm="THROUGHPUT_BASED",\
mergeFrequencyMinutes=2,\
inputFileFormat="avro"
```

Tip: Create a cron job for keep syncing the tables using an interval like 15 minutes (respect the Load Jobs [quota policy](https://cloud.google.com/bigquery/quota-policy))

## Requirements

Familiarity with standard Linux environments

Familiarity with change data capture (CDC) concepts

Google Cloud Service and Software Tools
+ Google Datastream API
+ Amazon RDS MySQL or Google Cloud SQL
+ Google Cloud Storage
+ Google Cloud Pub/Sub API
+ Google Cloud Shell environment


# View the Data in BigQuery

The Dataflow job will replicate your data into the BigQuery dataset supplied. View these tables in the BigQuery UI: Navigation Menu > BigQuery.
<p align="center"><img src="https://i.imgur.com/TGIQ9ks.png" alt="Select MySQL for Source and Cloud Storage for Destination Type" /></p>

## Usage



## Credits



## License

MIT license, see [LICENSE](LICENSE)
