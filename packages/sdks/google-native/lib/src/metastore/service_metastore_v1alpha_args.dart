// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_metastore_v1alpha.dart';
import 'hive_metastore_config_metastore_v1alpha.dart';
import 'maintenance_window_metastore_v1alpha.dart';
import 'metadata_integration_metastore_v1alpha.dart';
import 'network_config_metastore_v1alpha.dart';
import 'scaling_config_metastore_v1alpha.dart';
import 'service_database_type_metastore_v1alpha.dart';
import 'service_release_channel_metastore_v1alpha.dart';
import 'service_tier_metastore_v1alpha.dart';
import 'telemetry_config_metastore_v1alpha.dart';

/// {@template pulumi_metastore_v1alpha_service_metastore_v1alpha_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_service_metastore_v1alpha_args_doc}
class ServiceMetastoreV1alphaArgs {
  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<ServiceDatabaseTypeMetastoreV1alpha>? databaseType;
  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfigMetastoreV1alpha>? encryptionConfig;
  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfigMetastoreV1alpha>? hiveMetastoreConfig;
  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindowMetastoreV1alpha>? maintenanceWindow;
  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegrationMetastoreV1alpha>? metadataIntegration;
  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String>? name;
  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String>? network;
  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfigMetastoreV1alpha>? networkConfig;
  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;
  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<ServiceReleaseChannelMetastoreV1alpha>? releaseChannel;
  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;
  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfigMetastoreV1alpha>? scalingConfig;
  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> serviceId;
  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfigMetastoreV1alpha>? telemetryConfig;
  /// The tier of the service.
  final pulumi.Input<ServiceTierMetastoreV1alpha>? tier;

  /// Creates a new [ServiceMetastoreV1alphaArgs].
  /// [databaseType] Immutable. The database type that the Metastore service stores its data.
  /// [encryptionConfig] Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [location] Optional.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  /// [metadataIntegration] Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [name] Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// [network] Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [project] Optional.
  /// [releaseChannel] Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  /// [requestId] Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  /// [scalingConfig] Scaling configuration of the metastore service.
  /// [serviceId] Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  ServiceMetastoreV1alphaArgs({
    this.databaseType,
    this.encryptionConfig,
    this.hiveMetastoreConfig,
    this.labels,
    this.location,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.name,
    this.network,
    this.networkConfig,
    this.port,
    this.project,
    this.releaseChannel,
    this.requestId,
    this.scalingConfig,
    required this.serviceId,
    this.telemetryConfig,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType': ?pulumi.Input.mapOptionalInputValue<ServiceDatabaseTypeMetastoreV1alpha, String>(databaseType, (value) => value.value),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfigMetastoreV1alpha, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'hiveMetastoreConfig': ?pulumi.Input.mapOptionalInputValue<HiveMetastoreConfigMetastoreV1alpha, Map<String, dynamic>>(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindowMetastoreV1alpha, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration': ?pulumi.Input.mapOptionalInputValue<MetadataIntegrationMetastoreV1alpha, Map<String, dynamic>>(metadataIntegration, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigMetastoreV1alpha, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'releaseChannel': ?pulumi.Input.mapOptionalInputValue<ServiceReleaseChannelMetastoreV1alpha, String>(releaseChannel, (value) => value.value),
      'requestId': ?requestId,
      'scalingConfig': ?pulumi.Input.mapOptionalInputValue<ScalingConfigMetastoreV1alpha, Map<String, dynamic>>(scalingConfig, (value) => value.toMap()),
      'serviceId': serviceId,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<TelemetryConfigMetastoreV1alpha, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'tier': ?pulumi.Input.mapOptionalInputValue<ServiceTierMetastoreV1alpha, String>(tier, (value) => value.value),
    };
  }

  factory ServiceMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceMetastoreV1alphaArgs(
      databaseType: map['databaseType'] == null ? null : (ServiceDatabaseTypeMetastoreV1alpha.fromValue(map['databaseType']! as String)).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfigMetastoreV1alpha.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null ? null : (HiveMetastoreConfigMetastoreV1alpha.fromMap((map['hiveMetastoreConfig']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MaintenanceWindowMetastoreV1alpha.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      metadataIntegration: map['metadataIntegration'] == null ? null : (MetadataIntegrationMetastoreV1alpha.fromMap((map['metadataIntegration']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfigMetastoreV1alpha.fromMap((map['networkConfig']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      releaseChannel: map['releaseChannel'] == null ? null : (ServiceReleaseChannelMetastoreV1alpha.fromValue(map['releaseChannel']! as String)).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      scalingConfig: map['scalingConfig'] == null ? null : (ScalingConfigMetastoreV1alpha.fromMap((map['scalingConfig']! as Map).cast<String, dynamic>())).input(),
      serviceId: (map['serviceId'] as String).input(),
      telemetryConfig: map['telemetryConfig'] == null ? null : (TelemetryConfigMetastoreV1alpha.fromMap((map['telemetryConfig']! as Map).cast<String, dynamic>())).input(),
      tier: map['tier'] == null ? null : (ServiceTierMetastoreV1alpha.fromValue(map['tier']! as String)).input(),
    );
  }
}

