import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_metastore_v1alpha.dart';
import 'hive_metastore_config_response_metastore_v1alpha.dart';
import 'maintenance_window_response_metastore_v1alpha.dart';
import 'metadata_integration_response_metastore_v1alpha.dart';
import 'metadata_management_activity_response_metastore_v1alpha.dart';
import 'network_config_response_metastore_v1alpha.dart';
import 'scaling_config_response_metastore_v1alpha.dart';
import 'service_metastore_v1alpha_args.dart';
import 'telemetry_config_response_metastore_v1alpha.dart';

/// Creates a metastore service in a project and location.
class ServiceMetastoreV1alpha extends pulumi.CustomResource {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  late final pulumi.Output<String> artifactGcsUri;

  /// The time when the metastore service was created.
  late final pulumi.Output<String> createTime;

  /// Immutable. The database type that the Metastore service stores its data.
  late final pulumi.Output<String> databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  late final pulumi.Output<EncryptionConfigResponseMetastoreV1alpha>
  encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  late final pulumi.Output<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  late final pulumi.Output<HiveMetastoreConfigResponseMetastoreV1alpha>
  hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  late final pulumi.Output<MaintenanceWindowResponseMetastoreV1alpha>
  maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  late final pulumi.Output<MetadataIntegrationResponseMetastoreV1alpha>
  metadataIntegration;

  /// The metadata management activities of the metastore service.
  late final pulumi.Output<MetadataManagementActivityResponseMetastoreV1alpha>
  metadataManagementActivity;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  late final pulumi.Output<String> name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  late final pulumi.Output<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  late final pulumi.Output<NetworkConfigResponseMetastoreV1alpha> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  late final pulumi.Output<int> port;
  late final pulumi.Output<String> project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  late final pulumi.Output<String> releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final pulumi.Output<String?> requestId;

  /// Scaling configuration of the metastore service.
  late final pulumi.Output<ScalingConfigResponseMetastoreV1alpha> scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final pulumi.Output<String> serviceId;

  /// The current state of the metastore service.
  late final pulumi.Output<String> state;

  /// Additional information about the current state of the metastore service, if available.
  late final pulumi.Output<String> stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  late final pulumi.Output<TelemetryConfigResponseMetastoreV1alpha>
  telemetryConfig;

  /// The tier of the service.
  late final pulumi.Output<String> tier;

  /// The globally unique resource identifier of the metastore service.
  late final pulumi.Output<String> uid;

  /// The time when the metastore service was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServiceMetastoreV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceMetastoreV1alpha]. {@macro pulumi_metastore_v1alpha_service_metastore_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceMetastoreV1alpha(
    String name, {
    ServiceMetastoreV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:metastore/v1alpha:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    artifactGcsUri = registerOutput<String>('artifactGcsUri');
    createTime = registerOutput<String>('createTime');
    databaseType = registerOutput<String>('databaseType');
    encryptionConfig = registerOutput<EncryptionConfigResponseMetastoreV1alpha>(
      'encryptionConfig',
    );
    endpointUri = registerOutput<String>('endpointUri');
    hiveMetastoreConfig =
        registerOutput<HiveMetastoreConfigResponseMetastoreV1alpha>(
          'hiveMetastoreConfig',
        );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    maintenanceWindow =
        registerOutput<MaintenanceWindowResponseMetastoreV1alpha>(
          'maintenanceWindow',
        );
    metadataIntegration =
        registerOutput<MetadataIntegrationResponseMetastoreV1alpha>(
          'metadataIntegration',
        );
    metadataManagementActivity =
        registerOutput<MetadataManagementActivityResponseMetastoreV1alpha>(
          'metadataManagementActivity',
        );
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    networkConfig = registerOutput<NetworkConfigResponseMetastoreV1alpha>(
      'networkConfig',
    );
    port = registerOutput<int>('port');
    project = registerOutput<String>('project');
    releaseChannel = registerOutput<String>('releaseChannel');
    requestId = registerOutput<String?>('requestId');
    scalingConfig = registerOutput<ScalingConfigResponseMetastoreV1alpha>(
      'scalingConfig',
    );
    serviceId = registerOutput<String>('serviceId');
    state = registerOutput<String>('state');
    stateMessage = registerOutput<String>('stateMessage');
    telemetryConfig = registerOutput<TelemetryConfigResponseMetastoreV1alpha>(
      'telemetryConfig',
    );
    tier = registerOutput<String>('tier');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
