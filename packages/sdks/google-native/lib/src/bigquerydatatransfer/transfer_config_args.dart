// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_preferences.dart';
import 'encryption_configuration.dart';
import 'schedule_options.dart';

/// {@template pulumi_bigquerydatatransfer_v1_transfer_config_args_doc}
/// The set of arguments for TransferConfig.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatatransfer_v1_transfer_config_args_doc}
class TransferConfigArgs {
  /// Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  final pulumi.Input<String>? authorizationCode;
  /// The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  final pulumi.Input<int>? dataRefreshWindowDays;
  /// Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
  final pulumi.Input<String>? dataSourceId;
  /// The BigQuery target dataset id.
  final pulumi.Input<String>? destinationDatasetId;
  /// Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  final pulumi.Input<bool>? disabled;
  /// User specified display name for the data transfer.
  final pulumi.Input<String>? displayName;
  /// Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  final pulumi.Input<EmailPreferences>? emailPreferences;
  /// The encryption configuration part. Currently, it is only used for the optional KMS key name. The BigQuery service account of your project must be granted permissions to use the key. Read methods will return the key name applied in effect. Write methods will apply the key if it is present, or otherwise try to apply project default keys if it is absent.
  final pulumi.Input<EncryptionConfiguration>? encryptionConfiguration;
  final pulumi.Input<String>? location;
  /// The resource name of the transfer config. Transfer config names have the form either `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or `projects/{project_id}/transferConfigs/{config_id}`, where `config_id` is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  final pulumi.Input<String>? name;
  /// Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  final pulumi.Input<String>? notificationPubsubTopic;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  final pulumi.Input<Map<String, String>>? params;
  final pulumi.Input<String>? project;
  /// Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  final pulumi.Input<String>? schedule;
  /// Options customizing the data transfer schedule.
  final pulumi.Input<ScheduleOptions>? scheduleOptions;
  /// Optional service account email. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  final pulumi.Input<String>? serviceAccountName;
  /// Deprecated. Unique ID of the user on whose behalf transfer is done.
  final pulumi.Input<String>? userId;
  /// Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  final pulumi.Input<String>? versionInfo;

  /// Creates a new [TransferConfigArgs].
  /// [authorizationCode] Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  /// [dataRefreshWindowDays] The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  /// [dataSourceId] Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
  /// [destinationDatasetId] The BigQuery target dataset id.
  /// [disabled] Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  /// [displayName] User specified display name for the data transfer.
  /// [emailPreferences] Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  /// [encryptionConfiguration] The encryption configuration part. Currently, it is only used for the optional KMS key name. The BigQuery service account of your project must be granted permissions to use the key. Read methods will return the key name applied in effect. Write methods will apply the key if it is present, or otherwise try to apply project default keys if it is absent.
  /// [location] Optional.
  /// [name] The resource name of the transfer config. Transfer config names have the form either `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or `projects/{project_id}/transferConfigs/{config_id}`, where `config_id` is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  /// [notificationPubsubTopic] Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  /// [params] Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  /// [project] Optional.
  /// [schedule] Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  /// [scheduleOptions] Options customizing the data transfer schedule.
  /// [serviceAccountName] Optional service account email. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  /// [userId] Deprecated. Unique ID of the user on whose behalf transfer is done.
  /// [versionInfo] Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  TransferConfigArgs({
    this.authorizationCode,
    this.dataRefreshWindowDays,
    this.dataSourceId,
    this.destinationDatasetId,
    this.disabled,
    this.displayName,
    this.emailPreferences,
    this.encryptionConfiguration,
    this.location,
    this.name,
    this.notificationPubsubTopic,
    this.params,
    this.project,
    this.schedule,
    this.scheduleOptions,
    this.serviceAccountName,
    this.userId,
    this.versionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCode': ?authorizationCode,
      'dataRefreshWindowDays': ?dataRefreshWindowDays,
      'dataSourceId': ?dataSourceId,
      'destinationDatasetId': ?destinationDatasetId,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'emailPreferences': ?pulumi.Input.mapOptionalInputValue<EmailPreferences, Map<String, dynamic>>(emailPreferences, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<EncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'notificationPubsubTopic': ?notificationPubsubTopic,
      'params': ?params,
      'project': ?project,
      'schedule': ?schedule,
      'scheduleOptions': ?pulumi.Input.mapOptionalInputValue<ScheduleOptions, Map<String, dynamic>>(scheduleOptions, (value) => value.toMap()),
      'serviceAccountName': ?serviceAccountName,
      'userId': ?userId,
      'versionInfo': ?versionInfo,
    };
  }

  factory TransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return TransferConfigArgs(
      authorizationCode: map['authorizationCode'] == null ? null : (map['authorizationCode']! as String).input(),
      dataRefreshWindowDays: map['dataRefreshWindowDays'] == null ? null : (map['dataRefreshWindowDays']! as int).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId']! as String).input(),
      destinationDatasetId: map['destinationDatasetId'] == null ? null : (map['destinationDatasetId']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      emailPreferences: map['emailPreferences'] == null ? null : (EmailPreferences.fromMap((map['emailPreferences']! as Map).cast<String, dynamic>())).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : (EncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationPubsubTopic: map['notificationPubsubTopic'] == null ? null : (map['notificationPubsubTopic']! as String).input(),
      params: map['params'] == null ? null : ((map['params']! as Map).cast<String, String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
      scheduleOptions: map['scheduleOptions'] == null ? null : (ScheduleOptions.fromMap((map['scheduleOptions']! as Map).cast<String, dynamic>())).input(),
      serviceAccountName: map['serviceAccountName'] == null ? null : (map['serviceAccountName']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      versionInfo: map['versionInfo'] == null ? null : (map['versionInfo']! as String).input(),
    );
  }
}

