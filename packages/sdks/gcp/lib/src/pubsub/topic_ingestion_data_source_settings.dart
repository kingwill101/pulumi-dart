// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_ingestion_data_source_settings_aws_kinesis.dart';
import 'topic_ingestion_data_source_settings_aws_msk.dart';
import 'topic_ingestion_data_source_settings_azure_event_hubs.dart';
import 'topic_ingestion_data_source_settings_cloud_storage.dart';
import 'topic_ingestion_data_source_settings_confluent_cloud.dart';
import 'topic_ingestion_data_source_settings_platform_logs_settings.dart';

class TopicIngestionDataSourceSettings {
  /// Settings for ingestion from Amazon Kinesis Data Streams.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsAwsKinesis>? awsKinesis;
  /// Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsAwsMsk>? awsMsk;
  /// Settings for ingestion from Azure Event Hubs.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsAzureEventHubs>? azureEventHubs;
  /// Settings for ingestion from Cloud Storage.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsCloudStorage>? cloudStorage;
  /// Settings for ingestion from Confluent Cloud.
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsConfluentCloud>? confluentCloud;
  /// Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  /// no Platform Logs will be generated.'
  /// Structure is documented below.
  final pulumi.Input<TopicIngestionDataSourceSettingsPlatformLogsSettings>? platformLogsSettings;

  /// Creates a new [TopicIngestionDataSourceSettings].
  /// [awsKinesis] Settings for ingestion from Amazon Kinesis Data Streams.
  /// [awsMsk] Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// [azureEventHubs] Settings for ingestion from Azure Event Hubs.
  /// [cloudStorage] Settings for ingestion from Cloud Storage.
  /// [confluentCloud] Settings for ingestion from Confluent Cloud.
  /// [platformLogsSettings] Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  TopicIngestionDataSourceSettings({
    this.awsKinesis,
    this.awsMsk,
    this.azureEventHubs,
    this.cloudStorage,
    this.confluentCloud,
    this.platformLogsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKinesis': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsAwsKinesis, Map<String, dynamic>>(awsKinesis, (value) => value.toMap()),
      'awsMsk': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsAwsMsk, Map<String, dynamic>>(awsMsk, (value) => value.toMap()),
      'azureEventHubs': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsAzureEventHubs, Map<String, dynamic>>(azureEventHubs, (value) => value.toMap()),
      'cloudStorage': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsCloudStorage, Map<String, dynamic>>(cloudStorage, (value) => value.toMap()),
      'confluentCloud': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsConfluentCloud, Map<String, dynamic>>(confluentCloud, (value) => value.toMap()),
      'platformLogsSettings': ?pulumi.Input.mapOptionalInputValue<TopicIngestionDataSourceSettingsPlatformLogsSettings, Map<String, dynamic>>(platformLogsSettings, (value) => value.toMap()),
    };
  }

  factory TopicIngestionDataSourceSettings.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettings(
      awsKinesis: map['awsKinesis'] == null ? null : (TopicIngestionDataSourceSettingsAwsKinesis.fromMap((map['awsKinesis'] as Map).cast<String, dynamic>())).input(),
      awsMsk: map['awsMsk'] == null ? null : (TopicIngestionDataSourceSettingsAwsMsk.fromMap((map['awsMsk'] as Map).cast<String, dynamic>())).input(),
      azureEventHubs: map['azureEventHubs'] == null ? null : (TopicIngestionDataSourceSettingsAzureEventHubs.fromMap((map['azureEventHubs'] as Map).cast<String, dynamic>())).input(),
      cloudStorage: map['cloudStorage'] == null ? null : (TopicIngestionDataSourceSettingsCloudStorage.fromMap((map['cloudStorage'] as Map).cast<String, dynamic>())).input(),
      confluentCloud: map['confluentCloud'] == null ? null : (TopicIngestionDataSourceSettingsConfluentCloud.fromMap((map['confluentCloud'] as Map).cast<String, dynamic>())).input(),
      platformLogsSettings: map['platformLogsSettings'] == null ? null : (TopicIngestionDataSourceSettingsPlatformLogsSettings.fromMap((map['platformLogsSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

