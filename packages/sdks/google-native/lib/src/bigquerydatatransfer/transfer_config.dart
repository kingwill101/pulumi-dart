import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_preferences_response.dart';
import 'encryption_configuration_response.dart';
import 'schedule_options_response.dart';
import 'transfer_config_args.dart';
import 'user_info_response.dart';

/// Creates a new data transfer configuration.
/// Auto-naming is currently not supported for this resource.
class TransferConfig extends pulumi.CustomResource {
  /// Optional OAuth2 authorization code to use with this transfer configuration. This is required only if `transferConfig.dataSourceId` is 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain authorization_code, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=authorization_code&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  late final pulumi.Output<String?> authorizationCode;
  /// The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  late final pulumi.Output<int> dataRefreshWindowDays;
  /// Data source ID. This cannot be changed once data transfer is created. The full list of available data source IDs can be returned through an API call: https://cloud.google.com/bigquery-transfer/docs/reference/datatransfer/rest/v1/projects.locations.dataSources/list
  late final pulumi.Output<String> dataSourceId;
  /// Region in which BigQuery dataset is located.
  late final pulumi.Output<String> datasetRegion;
  /// The BigQuery target dataset id.
  late final pulumi.Output<String> destinationDatasetId;
  /// Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  late final pulumi.Output<bool> disabled;
  /// User specified display name for the data transfer.
  late final pulumi.Output<String> displayName;
  /// Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  late final pulumi.Output<EmailPreferencesResponse> emailPreferences;
  /// The encryption configuration part. Currently, it is only used for the optional KMS key name. The BigQuery service account of your project must be granted permissions to use the key. Read methods will return the key name applied in effect. Write methods will apply the key if it is present, or otherwise try to apply project default keys if it is absent.
  late final pulumi.Output<EncryptionConfigurationResponse> encryptionConfiguration;
  late final pulumi.Output<String> location;
  /// The resource name of the transfer config. Transfer config names have the form either `projects/{project_id}/locations/{region}/transferConfigs/{config_id}` or `projects/{project_id}/transferConfigs/{config_id}`, where `config_id` is usually a UUID, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  late final pulumi.Output<String> name;
  /// Next time when data transfer will run.
  late final pulumi.Output<String> nextRunTime;
  /// Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  late final pulumi.Output<String> notificationPubsubTopic;
  /// Information about the user whose credentials are used to transfer data. Populated only for `transferConfigs.get` requests. In case the user information is not available, this field will not be populated.
  late final pulumi.Output<UserInfoResponse> ownerInfo;
  /// Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  late final pulumi.Output<Map<String, String>> params;
  late final pulumi.Output<String> project;
  /// Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  late final pulumi.Output<String> schedule;
  /// Options customizing the data transfer schedule.
  late final pulumi.Output<ScheduleOptionsResponse> scheduleOptions;
  /// Optional service account email. If this field is set, the transfer config will be created with this service account's credentials. It requires that the requesting user calling this API has permissions to act as this service account. Note that not all data sources support service account credentials when creating a transfer config. For the latest list of data sources, read about [using service accounts](https://cloud.google.com/bigquery-transfer/docs/use-service-accounts).
  late final pulumi.Output<String?> serviceAccountName;
  /// State of the most recently updated transfer run.
  late final pulumi.Output<String> state;
  /// Data transfer modification time. Ignored by server on input.
  late final pulumi.Output<String> updateTime;
  /// Deprecated. Unique ID of the user on whose behalf transfer is done.
  late final pulumi.Output<String> userId;
  /// Optional version info. This is required only if `transferConfig.dataSourceId` is not 'youtube_channel' and new credentials are needed, as indicated by `CheckValidCreds`. In order to obtain version info, make a request to the following URL: https://www.gstatic.com/bigquerydatatransfer/oauthz/auth?redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=version_info&client_id=client_id&scope=data_source_scopes * The client_id is the OAuth client_id of the a data source as returned by ListDataSources method. * data_source_scopes are the scopes returned by ListDataSources method. Note that this should not be set when `service_account_name` is used to create the transfer config.
  late final pulumi.Output<String?> versionInfo;

  /// Creates a new [TransferConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferConfig]. {@macro pulumi_bigquerydatatransfer_v1_transfer_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferConfig(
    String name, {
    TransferConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:bigquerydatatransfer/v1:TransferConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationCode = registerOutput<String?>('authorizationCode');
    this.dataRefreshWindowDays = registerOutput<int>('dataRefreshWindowDays');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.datasetRegion = registerOutput<String>('datasetRegion');
    this.destinationDatasetId = registerOutput<String>('destinationDatasetId');
    this.disabled = registerOutput<bool>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.emailPreferences = registerOutput<EmailPreferencesResponse>('emailPreferences');
    this.encryptionConfiguration = registerOutput<EncryptionConfigurationResponse>('encryptionConfiguration');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nextRunTime = registerOutput<String>('nextRunTime');
    this.notificationPubsubTopic = registerOutput<String>('notificationPubsubTopic');
    this.ownerInfo = registerOutput<UserInfoResponse>('ownerInfo');
    this.params = registerOutput<Map<String, String>>('params');
    this.project = registerOutput<String>('project');
    this.schedule = registerOutput<String>('schedule');
    this.scheduleOptions = registerOutput<ScheduleOptionsResponse>('scheduleOptions');
    this.serviceAccountName = registerOutput<String?>('serviceAccountName');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.userId = registerOutput<String>('userId');
    this.versionInfo = registerOutput<String?>('versionInfo');
  }
}
