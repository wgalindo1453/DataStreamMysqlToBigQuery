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

+ Import data into the Cloud SQL instance

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

## Usage



## Credits



## License

MIT license, see [LICENSE](LICENSE)
