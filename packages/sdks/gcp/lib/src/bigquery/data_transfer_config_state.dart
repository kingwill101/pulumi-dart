// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_config_email_preferences.dart';
import 'data_transfer_config_encryption_configuration.dart';
import 'data_transfer_config_schedule_options.dart';
import 'data_transfer_config_sensitive_params.dart';

/// Input properties used for looking up and filtering DataTransferConfig resources.
class DataTransferConfigState {
  /// The number of days to look back to automatically refresh the data.
  /// For example, if dataRefreshWindowDays = 10, then every day BigQuery
  /// reingests data for [today-10, today-1], rather than ingesting data for
  /// just [today-1]. Only valid if the data source supports the feature.
  /// Set the value to 0 to use the default value.
  final pulumi.Input<int>? dataRefreshWindowDays;
  /// The data source id. Cannot be changed once the transfer config is created.
  final pulumi.Input<String>? dataSourceId;
  /// The BigQuery target dataset id.
  final pulumi.Input<String>? destinationDatasetId;
  /// When set to true, no runs are scheduled for a given transfer.
  final pulumi.Input<bool>? disabled;
  /// The user specified display name for the transfer config.
  final pulumi.Input<String>? displayName;
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
  /// The resource name of the transfer config. Transfer config names have the
  /// form projects/{projectId}/locations/{location}/transferConfigs/{configId}
  /// or projects/{projectId}/transferConfigs/{configId},
  /// where configId is usually a uuid, but this is not required.
  /// The name is ignored when creating a transfer config.
  final pulumi.Input<String>? name;
  /// Pub/Sub topic where notifications will be sent after transfer runs
  /// associated with this transfer config finish.
  final pulumi.Input<String>? notificationPubsubTopic;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// section for each data source. For example the parameters for Cloud Storage transfers are listed here:
  /// https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// **NOTE** : If you are attempting to update a parameter that cannot be updated (due to api limitations) please force recreation of the resource.
  final pulumi.Input<Map<String, String>>? params;
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

  /// Creates a new [DataTransferConfigState].
  /// [dataRefreshWindowDays] The number of days to look back to automatically refresh the data.
  /// [dataSourceId] The data source id. Cannot be changed once the transfer config is created.
  /// [destinationDatasetId] The BigQuery target dataset id.
  /// [disabled] When set to true, no runs are scheduled for a given transfer.
  /// [displayName] The user specified display name for the transfer config.
  /// [emailPreferences] Email notifications will be sent according to these preferences to the
  /// [encryptionConfiguration] Represents the encryption configuration for a transfer.
  /// [location] The geographic location where the transfer config should reside.
  /// [name] The resource name of the transfer config. Transfer config names have the
  /// [notificationPubsubTopic] Pub/Sub topic where notifications will be sent after transfer runs
  /// [params] Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer'
  /// [project] The ID of the project in which the resource belongs.
  /// [schedule] Data transfer schedule. If the data source does not support a custom
  /// [scheduleOptions] Options customizing the data transfer schedule.
  /// [sensitiveParams] Different parameters are configured primarily using the the `params` field on this
  /// [serviceAccountName] Service account email. If this field is set, transfer config will
  DataTransferConfigState({
    pulumi.Output<int>? dataRefreshWindowDays,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? destinationDatasetId,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<DataTransferConfigEmailPreferences>? emailPreferences,
    pulumi.Output<DataTransferConfigEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationPubsubTopic,
    pulumi.Output<Map<String, String>>? params,
    pulumi.Output<String>? project,
    pulumi.Output<String>? schedule,
    pulumi.Output<DataTransferConfigScheduleOptions>? scheduleOptions,
    pulumi.Output<DataTransferConfigSensitiveParams>? sensitiveParams,
    pulumi.Output<String>? serviceAccountName,
  }) :
      dataRefreshWindowDays = pulumi.Input.asOptionalInput<int>(dataRefreshWindowDays),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      destinationDatasetId = pulumi.Input.asOptionalInput<String>(destinationDatasetId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      emailPreferences = pulumi.Input.asOptionalInput<DataTransferConfigEmailPreferences>(emailPreferences),
      encryptionConfiguration = pulumi.Input.asOptionalInput<DataTransferConfigEncryptionConfiguration>(encryptionConfiguration),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationPubsubTopic = pulumi.Input.asOptionalInput<String>(notificationPubsubTopic),
      params = pulumi.Input.asOptionalInput<Map<String, String>>(params),
      project = pulumi.Input.asOptionalInput<String>(project),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      scheduleOptions = pulumi.Input.asOptionalInput<DataTransferConfigScheduleOptions>(scheduleOptions),
      sensitiveParams = pulumi.Input.asOptionalInput<DataTransferConfigSensitiveParams>(sensitiveParams),
      serviceAccountName = pulumi.Input.asOptionalInput<String>(serviceAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRefreshWindowDays': ?dataRefreshWindowDays,
      'dataSourceId': ?dataSourceId,
      'destinationDatasetId': ?destinationDatasetId,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'emailPreferences': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigEmailPreferences, Map<String, dynamic>>(emailPreferences, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notificationPubsubTopic': ?notificationPubsubTopic,
      'params': ?params,
      'project': ?project,
      'schedule': ?schedule,
      'scheduleOptions': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigScheduleOptions, Map<String, dynamic>>(scheduleOptions, (value) => value.toMap()),
      'sensitiveParams': ?pulumi.Input.mapOptionalInputValue<DataTransferConfigSensitiveParams, Map<String, dynamic>>(sensitiveParams, (value) => value.toMap()),
      'serviceAccountName': ?serviceAccountName,
    };
  }

  factory DataTransferConfigState.fromMap(Map<String, dynamic> map) {
    return DataTransferConfigState(
      dataRefreshWindowDays: map['dataRefreshWindowDays'] == null ? null : pulumi.Output.create<int>(map['dataRefreshWindowDays'] as int),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      destinationDatasetId: map['destinationDatasetId'] == null ? null : pulumi.Output.create<String>(map['destinationDatasetId'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      emailPreferences: map['emailPreferences'] == null ? null : pulumi.Output.create<DataTransferConfigEmailPreferences>(DataTransferConfigEmailPreferences.fromMap((map['emailPreferences'] as Map).cast<String, dynamic>())),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<DataTransferConfigEncryptionConfiguration>(DataTransferConfigEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationPubsubTopic: map['notificationPubsubTopic'] == null ? null : pulumi.Output.create<String>(map['notificationPubsubTopic'] as String),
      params: map['params'] == null ? null : pulumi.Output.create<Map<String, String>>((map['params'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      scheduleOptions: map['scheduleOptions'] == null ? null : pulumi.Output.create<DataTransferConfigScheduleOptions>(DataTransferConfigScheduleOptions.fromMap((map['scheduleOptions'] as Map).cast<String, dynamic>())),
      sensitiveParams: map['sensitiveParams'] == null ? null : pulumi.Output.create<DataTransferConfigSensitiveParams>(DataTransferConfigSensitiveParams.fromMap((map['sensitiveParams'] as Map).cast<String, dynamic>())),
      serviceAccountName: map['serviceAccountName'] == null ? null : pulumi.Output.create<String>(map['serviceAccountName'] as String),
    );
  }
}

