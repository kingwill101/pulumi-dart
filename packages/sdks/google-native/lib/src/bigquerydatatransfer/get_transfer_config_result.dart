// ignore_for_file: unused_element, unnecessary_cast

import 'email_preferences_response.dart';
import 'encryption_configuration_response.dart';
import 'schedule_options_response.dart';
import 'user_info_response.dart';

/// Result data returned by getTransferConfig.
class GetTransferConfigResult {
  /// The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  final int? dataRefreshWindowDays;
  /// Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
  final String? dataSourceId;
  /// Region in which BigQuery dataset is located.
  final String? datasetRegion;
  /// The BigQuery target dataset id.
  final String? destinationDatasetId;
  /// Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  final bool? disabled;
  /// User specified display name for the data transfer.
  final String? displayName;
  /// Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  final EmailPreferencesResponse? emailPreferences;
  /// The encryption configuration part. Currently, it is only used for the optional KMS key name. The BigQuery service account of your project must be granted permissions to use the key. Read methods will return the key name applied in effect. Write methods will apply the key if it is present, or otherwise try to apply project default keys if it is absent.
  final EncryptionConfigurationResponse? encryptionConfiguration;
  /// The resource name of the transfer config. Transfer config names have the form either `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or `projects/{project_id}/transferConfigs/{config_id}`, where `config_id` is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  final String? name;
  /// Next time when data transfer will run.
  final String? nextRunTime;
  /// Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  final String? notificationPubsubTopic;
  /// Information about the user whose credentials are used to transfer data. Populated only for `transferConfigs.get` requests. In case the user information is not available, this field will not be populated.
  final UserInfoResponse? ownerInfo;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  final Map<String, String>? params;
  /// Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  final String? schedule;
  /// Options customizing the data transfer schedule.
  final ScheduleOptionsResponse? scheduleOptions;
  /// State of the most recently updated transfer run.
  final String? state;
  /// Data transfer modification time. Ignored by server on input.
  final String? updateTime;
  /// Deprecated. Unique ID of the user on whose behalf transfer is done.
  final String? userId;

  /// Creates a new [GetTransferConfigResult].
  /// [dataRefreshWindowDays] The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  /// [dataSourceId] Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
  /// [datasetRegion] Region in which BigQuery dataset is located.
  /// [destinationDatasetId] The BigQuery target dataset id.
  /// [disabled] Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  /// [displayName] User specified display name for the data transfer.
  /// [emailPreferences] Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  /// [encryptionConfiguration] The encryption configuration part. Currently, it is only used for the optional KMS key name. The BigQuery service account of your project must be granted permissions to use the key. Read methods will return the key name applied in effect. Write methods will apply the key if it is present, or otherwise try to apply project default keys if it is absent.
  /// [name] The resource name of the transfer config. Transfer config names have the form either `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or `projects/{project_id}/transferConfigs/{config_id}`, where `config_id` is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  /// [nextRunTime] Next time when data transfer will run.
  /// [notificationPubsubTopic] Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  /// [ownerInfo] Information about the user whose credentials are used to transfer data. Populated only for `transferConfigs.get` requests. In case the user information is not available, this field will not be populated.
  /// [params] Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// [schedule] Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  /// [scheduleOptions] Options customizing the data transfer schedule.
  /// [state] State of the most recently updated transfer run.
  /// [updateTime] Data transfer modification time. Ignored by server on input.
  /// [userId] Deprecated. Unique ID of the user on whose behalf transfer is done.
  const GetTransferConfigResult({
    this.dataRefreshWindowDays,
    this.dataSourceId,
    this.datasetRegion,
    this.destinationDatasetId,
    this.disabled,
    this.displayName,
    this.emailPreferences,
    this.encryptionConfiguration,
    this.name,
    this.nextRunTime,
    this.notificationPubsubTopic,
    this.ownerInfo,
    this.params,
    this.schedule,
    this.scheduleOptions,
    this.state,
    this.updateTime,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRefreshWindowDays': ?dataRefreshWindowDays,
      'dataSourceId': ?dataSourceId,
      'datasetRegion': ?datasetRegion,
      'destinationDatasetId': ?destinationDatasetId,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'emailPreferences': ?emailPreferences?.toMap(),
      'encryptionConfiguration': ?encryptionConfiguration?.toMap(),
      'name': ?name,
      'nextRunTime': ?nextRunTime,
      'notificationPubsubTopic': ?notificationPubsubTopic,
      'ownerInfo': ?ownerInfo?.toMap(),
      'params': ?params,
      'schedule': ?schedule,
      'scheduleOptions': ?scheduleOptions?.toMap(),
      'state': ?state,
      'updateTime': ?updateTime,
      'userId': ?userId,
    };
  }

  factory GetTransferConfigResult.fromMap(Map<String, dynamic> map) {
    return GetTransferConfigResult(
      dataRefreshWindowDays: (() { final guardedValue = map['dataRefreshWindowDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasetRegion: (() { final guardedValue = map['datasetRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationDatasetId: (() { final guardedValue = map['destinationDatasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailPreferences: (() { final guardedValue = map['emailPreferences']; if (guardedValue == null) return null; return EmailPreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return EncryptionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nextRunTime: (() { final guardedValue = map['nextRunTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationPubsubTopic: (() { final guardedValue = map['notificationPubsubTopic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerInfo: (() { final guardedValue = map['ownerInfo']; if (guardedValue == null) return null; return UserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scheduleOptions: (() { final guardedValue = map['scheduleOptions']; if (guardedValue == null) return null; return ScheduleOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
