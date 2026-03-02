// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_config_email_preferences.dart';
import 'data_transfer_config_encryption_configuration.dart';
import 'data_transfer_config_schedule_options.dart';
import 'data_transfer_config_sensitive_params.dart';

/// {@template pulumi_bigquery_data_transfer_config_data_transfer_config_args_doc}
/// The set of arguments for DataTransferConfig.
/// {@endtemplate}
/// {@macro pulumi_bigquery_data_transfer_config_data_transfer_config_args_doc}
class DataTransferConfigArgs {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  final pulumi.Input<int>? dataRefreshWindowDays;
  /// The data source id. Cannot be changed once the transfer config is created.
  final pulumi.Input<String> dataSourceId;
  /// The BigQuery target dataset id.
  final pulumi.Input<String>? destinationDatasetId;
  /// When set to true, no runs are scheduled for a given transfer.
  final pulumi.Input<bool>? disabled;
  /// The user specified display name for the transfer config.
  final pulumi.Input<String> displayName;
  /// Email notifications will be sent according to these preferences to the
  /// email address of the user who owns this transfer config.
  /// Structure is documented below.
  final pulumi.Input<DataTransferConfigEmailPreferences>? emailPreferences;
  /// Represents the encryption configuration for a transfer.
  /// Structure is documented below.
  final pulumi.Input<DataTransferConfigEncryptionConfiguration>? encryptionConfiguration;
  /// The geographic location where the transfer config should reside.
  /// Examples: US, EU, asia-northeast1. The default value is US.
  final pulumi.Input<String>? location;
  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  final pulumi.Input<String>? notificationPubsubTopic;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  final pulumi.Input<Map<String, String>> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Data transfer schedule. If the data source does not support a custom
  /// schedule, this should be empty. If it is empty, the default value for
  /// the data source will be used. The specified times are in UTC. Examples
  /// of valid format: 1st,3rd monday of month 15:30, every wed,fri of jan,
  /// jun 13:15, and first sunday of quarter 00:00. See more explanation
  /// about the format here:
  /// https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format
  /// NOTE: The minimum interval time between recurring transfers depends
  /// on the data source; refer to the documentation for your data source.
  final pulumi.Input<String>? schedule;
  /// Options customizing the data transfer schedule.
  /// Structure is documented below.
  final pulumi.Input<DataTransferConfigScheduleOptions>? scheduleOptions;
  /// Different parameters are configured primarily using the the `params` field on this
  /// resource. This block contains the parameters which contain secrets or passwords so that they can be marked
  /// sensitive and hidden from plan output. The name of the field, eg: secret_access_key, will be the key
  /// in the `params` map in the api request.
  /// Credentials may not be specified in both locations and will cause an error. Changing from one location
  /// to a different credential configuration in the config will require an apply to update state.
  /// Structure is documented below.
  final pulumi.Input<DataTransferConfigSensitiveParams>? sensitiveParams;
  /// Service account email. If this field is set, transfer config will
  /// be created with this service account credentials. It requires that
  /// requesting user calling this API has permissions to act as this service account.
  final pulumi.Input<String>? serviceAccountName;

  /// Creates a new [DataTransferConfigArgs].
  /// [dataRefreshWindowDays] The number of days to look back to automatically refresh the data.
  /// [dataSourceId] The data source id. Cannot be changed once the transfer config is created.
  /// [destinationDatasetId] The BigQuery target dataset id.
  /// [disabled] When set to true, no runs are scheduled for a given transfer.
  /// [displayName] The user specified display name for the transfer config.
  /// [emailPreferences] Email notifications will be sent according to these preferences to the
  /// [encryptionConfiguration] Represents the encryption configuration for a transfer.
  /// [location] The geographic location where the transfer config should reside.
  /// [notificationPubsubTopic] Pub/Sub topic where notifications will be sent after transfer runs
  /// [params] Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// [project] The ID of the project in which the resource belongs.
  /// [schedule] Data transfer schedule. If the data source does not support a custom
  /// [scheduleOptions] Options customizing the data transfer schedule.
  /// [sensitiveParams] Different parameters are configured primarily using the the `params` field on this
  /// [serviceAccountName] Service account email. If this field is set, transfer config will
  DataTransferConfigArgs({
    this.dataRefreshWindowDays,
    required this.dataSourceId,
    this.destinationDatasetId,
    this.disabled,
    required this.displayName,
    this.emailPreferences,
    this.encryptionConfiguration,
    this.location,
    this.notificationPubsubTopic,
    required this.params,
    this.project,
    this.schedule,
    this.scheduleOptions,
    this.sensitiveParams,
    this.serviceAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRefreshWindowDays': ?dataRefreshWindowDays,
      'dataSourceId': dataSourceId,
      'destinationDatasetId': ?destinationDatasetId,
      'disabled': ?disabled,
      'displayName': displayName,
      'emailPreferences': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigEmailPreferences, Map<String, dynamic>>(emailPreferences, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'location': ?location,
      'notificationPubsubTopic': ?notificationPubsubTopic,
      'params': params,
      'project': ?project,
      'schedule': ?schedule,
      'scheduleOptions': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigScheduleOptions, Map<String, dynamic>>(scheduleOptions, (value) => value.toMap()),
      'sensitiveParams': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigSensitiveParams, Map<String, dynamic>>(sensitiveParams, (value) => value.toMap()),
      'serviceAccountName': ?serviceAccountName,
    };
  }

  factory DataTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigArgs(
      dataRefreshWindowDays: map['dataRefreshWindowDays'] == null ? null : (map['dataRefreshWindowDays']! as int).input(),
      dataSourceId: (map['dataSourceId'] as String).input(),
      destinationDatasetId: map['destinationDatasetId'] == null ? null : (map['destinationDatasetId']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: (map['displayName'] as String).input(),
      emailPreferences: map['emailPreferences'] == null ? null : (DataTransferConfigEmailPreferences.fromMap((map['emailPreferences']! as Map).cast<String, dynamic>())).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (DataTransferConfigEncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      notificationPubsubTopic: map['notificationPubsubTopic'] == null ? null : (map['notificationPubsubTopic']! as String).input(),
      params: ((map['params'] as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
      scheduleOptions: map['scheduleOptions'] == null ? null : (DataTransferConfigScheduleOptions.fromMap((map['scheduleOptions']! as Map).cast<String, dynamic>())).input(),
      sensitiveParams: map['sensitiveParams'] == null ? null : (DataTransferConfigSensitiveParams.fromMap((map['sensitiveParams']! as Map).cast<String, dynamic>())).input(),
      serviceAccountName: map['serviceAccountName'] == null ? null : (map['serviceAccountName']! as String).input(),
    );
  }
}

