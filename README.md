# DataStreamMysqlToBigQuery
<p align="center"><img src="https://i.imgur.com/ty3nHnj.png" alt="MySQL to Google BigQuery Logo" /></p>

<h1 align="center">DataStream MySQL to Google BigQuery</h1>

<p align="center"><a href="https://drive.google.com/file/d/1PP7YQyYMlXOaL_j3vjssQGYXq7trtSoG/view?usp=sharing">Click here to view a brief description on how Datastream was utilized.</a></p>

## Table of Contents
+ [What you'll do](#what-youll-do)
+ [How it works](#how-it-works)
+ [Requirements](#requirements)
+ [Usage](#usage)
+ [Credits](#credits)
+ [License](#license)

## What you'll do

+ Prepare a MySQL Cloud SQL instance using the Google Cloud Console

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



Steps for :



Final three steps:



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
