// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_ingestion_data_source_setting_aws_kinese.dart';
import 'get_topic_ingestion_data_source_setting_aws_msk.dart';
import 'get_topic_ingestion_data_source_setting_azure_event_hub.dart';
import 'get_topic_ingestion_data_source_setting_cloud_storage.dart';
import 'get_topic_ingestion_data_source_setting_confluent_cloud.dart';
import 'get_topic_ingestion_data_source_setting_platform_logs_setting.dart';

class GetTopicIngestionDataSourceSetting {
  /// Settings for ingestion from Amazon Kinesis Data Streams.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingAwsKinese>>
  awsKineses;

  /// Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingAwsMsk>> awsMsks;

  /// Settings for ingestion from Azure Event Hubs.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingAzureEventHub>>
  azureEventHubs;

  /// Settings for ingestion from Cloud Storage.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingCloudStorage>>
  cloudStorages;

  /// Settings for ingestion from Confluent Cloud.
  final pulumi.Input<List<GetTopicIngestionDataSourceSettingConfluentCloud>>
  confluentClouds;

  /// Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  /// no Platform Logs will be generated.'
  final pulumi.Input<
    List<GetTopicIngestionDataSourceSettingPlatformLogsSetting>
  >
  platformLogsSettings;

  /// Creates a new [GetTopicIngestionDataSourceSetting].
  /// [awsKineses] Settings for ingestion from Amazon Kinesis Data Streams.
  /// [awsMsks] Settings for ingestion from Amazon Managed Streaming for Apache Kafka.
  /// [azureEventHubs] Settings for ingestion from Azure Event Hubs.
  /// [cloudStorages] Settings for ingestion from Cloud Storage.
  /// [confluentClouds] Settings for ingestion from Confluent Cloud.
  /// [platformLogsSettings] Settings for Platform Logs regarding ingestion to Pub/Sub. If unset,
  GetTopicIngestionDataSourceSetting({
    required this.awsKineses,
    required this.awsMsks,
    required this.azureEventHubs,
    required this.cloudStorages,
    required this.confluentClouds,
    required this.platformLogsSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKineses':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingAwsKinese>,
            List<Map<String, dynamic>>
          >(
            awsKineses,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingAwsKinese,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'awsMsks':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingAwsMsk>,
            List<Map<String, dynamic>>
          >(
            awsMsks,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingAwsMsk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'azureEventHubs':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingAzureEventHub>,
            List<Map<String, dynamic>>
          >(
            azureEventHubs,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingAzureEventHub,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cloudStorages':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingCloudStorage>,
            List<Map<String, dynamic>>
          >(
            cloudStorages,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingCloudStorage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'confluentClouds':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingConfluentCloud>,
            List<Map<String, dynamic>>
          >(
            confluentClouds,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingConfluentCloud,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'platformLogsSettings':
          pulumi.Input.mapInputValue<
            List<GetTopicIngestionDataSourceSettingPlatformLogsSetting>,
            List<Map<String, dynamic>>
          >(
            platformLogsSettings,
            (value) =>
                pulumi.Input.encodeList<
                  GetTopicIngestionDataSourceSettingPlatformLogsSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetTopicIngestionDataSourceSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSetting(
      awsKineses: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingAwsKinese>(
          map['awsKineses']!,
          (value) => GetTopicIngestionDataSourceSettingAwsKinese.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      awsMsks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingAwsMsk>(
          map['awsMsks']!,
          (value) => GetTopicIngestionDataSourceSettingAwsMsk.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      azureEventHubs: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetTopicIngestionDataSourceSettingAzureEventHub>(
          map['azureEventHubs']!,
          (value) => GetTopicIngestionDataSourceSettingAzureEventHub.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      cloudStorages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTopicIngestionDataSourceSettingCloudStorage>(
          map['cloudStorages']!,
          (value) => GetTopicIngestionDataSourceSettingCloudStorage.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      confluentClouds: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetTopicIngestionDataSourceSettingConfluentCloud>(
          map['confluentClouds']!,
          (value) => GetTopicIngestionDataSourceSettingConfluentCloud.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      platformLogsSettings: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetTopicIngestionDataSourceSettingPlatformLogsSetting
        >(
          map['platformLogsSettings']!,
          (value) =>
              GetTopicIngestionDataSourceSettingPlatformLogsSetting.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
