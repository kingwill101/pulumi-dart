// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_automated_backup_config.dart';
import 'instance_cross_instance_replication_config.dart';
import 'instance_desired_auto_created_endpoint.dart';
import 'instance_desired_psc_auto_connection.dart';
import 'instance_gcs_source.dart';
import 'instance_maintenance_policy.dart';
import 'instance_managed_backup_source.dart';
import 'instance_persistence_config.dart';
import 'instance_zone_distribution_config.dart';

/// {@template pulumi_memorystore_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_memorystore_instance_instance_args_doc}
class InstanceArgs {
  /// Optional. Immutable. Authorization mode of the instance. Possible values:
  /// AUTH_DISABLED
  /// IAM_AUTH
  final pulumi.Input<String>? authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceAutomatedBackupConfig>? automatedBackupConfig;
  /// Cross instance replication config
  /// Structure is documented below.
  final pulumi.Input<InstanceCrossInstanceReplicationConfig>? crossInstanceReplicationConfig;
  /// Optional. If set to true deletion of the instance will fail.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Immutable. User inputs for the auto-created endpoints connections.
  final pulumi.Input<List<InstanceDesiredAutoCreatedEndpoint>>? desiredAutoCreatedEndpoints;
  /// `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  final pulumi.Input<List<InstanceDesiredPscAutoConnection>>? desiredPscAutoConnections;
  /// Optional. User-provided engine configurations for the instance.
  final pulumi.Input<Map<String, String>>? engineConfigs;
  /// Optional. Engine version of the instance.
  final pulumi.Input<String>? engineVersion;
  /// GCS source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceGcsSource>? gcsSource;
  /// Required. The ID to use for the instance, which will become the final component of
  /// the instance's resource name.
  /// This value is subject to the following restrictions:
  /// * Must be 4-63 characters in length
  /// * Must begin with a letter or digit
  /// * Must contain only lowercase letters, digits, and hyphens
  /// * Must not end with a hyphen
  /// * Must be unique within a location
  final pulumi.Input<String> instanceId;
  /// The KMS key used to encrypt the at-rest data of the cluster
  final pulumi.Input<String>? kmsKey;
  /// Optional. Labels to represent user-provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  final pulumi.Input<String> location;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String>? maintenanceVersion;
  /// Managed backup source for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceManagedBackupSource>? managedBackupSource;
  /// Optional. cluster or cluster-disabled.
  /// Possible values:
  /// CLUSTER
  /// CLUSTER_DISABLED
  /// Possible values are: `CLUSTER`, `CLUSTER_DISABLED`.
  final pulumi.Input<String>? mode;
  /// Optional. Machine type for individual nodes of the instance.
  /// Possible values:
  /// SHARED_CORE_NANO
  /// HIGHMEM_MEDIUM
  /// HIGHMEM_XLARGE
  /// STANDARD_SMALL
  final pulumi.Input<String>? nodeType;
  /// Represents persistence configuration for a instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePersistenceConfig>? persistenceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  final pulumi.Input<int>? replicaCount;
  /// Required. Number of shards for the instance.
  final pulumi.Input<int> shardCount;
  /// Optional. Immutable. In-transit encryption mode of the instance.
  /// Possible values:
  /// TRANSIT_ENCRYPTION_DISABLED
  /// SERVER_AUTHENTICATION
  final pulumi.Input<String>? transitEncryptionMode;
  /// Zone distribution configuration for allocation of instance resources.
  /// Structure is documented below.
  final pulumi.Input<InstanceZoneDistributionConfig>? zoneDistributionConfig;

  /// Creates a new [InstanceArgs].
  /// [authorizationMode] Optional. Immutable. Authorization mode of the instance. Possible values:
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [crossInstanceReplicationConfig] Cross instance replication config
  /// [deletionProtectionEnabled] Optional. If set to true deletion of the instance will fail.
  /// [desiredAutoCreatedEndpoints] Immutable. User inputs for the auto-created endpoints connections.
  /// [desiredPscAutoConnections] `desired_psc_auto_connections` is deprecated  Use `desired_auto_created_endpoints` instead `pulumi import` will only work with desired_auto_created_endpoints`.
  /// [engineConfigs] Optional. User-provided engine configurations for the instance.
  /// [engineVersion] Optional. Engine version of the instance.
  /// [gcsSource] GCS source for the instance.
  /// [instanceId] Required. The ID to use for the instance, which will become the final component of
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster
  /// [labels] Optional. Labels to represent user-provided metadata.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `memorystore.googleapis.com/CertificateAuthority`.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// [managedBackupSource] Managed backup source for the instance.
  /// [mode] Optional. cluster or cluster-disabled.
  /// [nodeType] Optional. Machine type for individual nodes of the instance.
  /// [persistenceConfig] Represents persistence configuration for a instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicaCount] Optional. Number of replica nodes per shard. If omitted the default is 0 replicas.
  /// [shardCount] Required. Number of shards for the instance.
  /// [transitEncryptionMode] Optional. Immutable. In-transit encryption mode of the instance.
  /// [zoneDistributionConfig] Zone distribution configuration for allocation of instance resources.
  InstanceArgs({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.crossInstanceReplicationConfig,
    this.deletionProtectionEnabled,
    this.desiredAutoCreatedEndpoints,
    this.desiredPscAutoConnections,
    this.engineConfigs,
    this.engineVersion,
    this.gcsSource,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.maintenancePolicy,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.mode,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.replicaCount,
    required this.shardCount,
    this.transitEncryptionMode,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'crossInstanceReplicationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(crossInstanceReplicationConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'desiredAutoCreatedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredAutoCreatedEndpoint>, List<Map<String, dynamic>>>(desiredAutoCreatedEndpoints, (value) => pulumi.Input.encodeList<InstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredPscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<InstanceDesiredPscAutoConnection>, List<Map<String, dynamic>>>(desiredPscAutoConnections, (value) => pulumi.Input.encodeList<InstanceDesiredPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'engineConfigs': ?engineConfigs,
      'engineVersion': ?engineVersion,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<InstanceGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSource': ?pulumi.Input.mapOptionalInputValue<InstanceManagedBackupSource, Map<String, dynamic>>(managedBackupSource, (value) => value.toMap()),
      'mode': ?mode,
      'nodeType': ?nodeType,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<InstancePersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'replicaCount': ?replicaCount,
      'shardCount': shardCount,
      'transitEncryptionMode': ?transitEncryptionMode,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<InstanceZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      authorizationMode: map['authorizationMode'] == null ? null : (map['authorizationMode'] as String).input(),
      automatedBackupConfig: map['automatedBackupConfig'] == null ? null : (InstanceAutomatedBackupConfig.fromMap((map['automatedBackupConfig'] as Map).cast<String, dynamic>())).input(),
      crossInstanceReplicationConfig: map['crossInstanceReplicationConfig'] == null ? null : (InstanceCrossInstanceReplicationConfig.fromMap((map['crossInstanceReplicationConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      desiredAutoCreatedEndpoints: map['desiredAutoCreatedEndpoints'] == null ? null : (pulumi.Input.decodeList<InstanceDesiredAutoCreatedEndpoint>(map['desiredAutoCreatedEndpoints'], (value) => InstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      desiredPscAutoConnections: map['desiredPscAutoConnections'] == null ? null : (pulumi.Input.decodeList<InstanceDesiredPscAutoConnection>(map['desiredPscAutoConnections'], (value) => InstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      engineConfigs: map['engineConfigs'] == null ? null : ((map['engineConfigs'] as Map).cast<String, String>()).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      gcsSource: map['gcsSource'] == null ? null : (InstanceGcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
      instanceId: (map['instanceId'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : (map['maintenanceVersion'] as String).input(),
      managedBackupSource: map['managedBackupSource'] == null ? null : (InstanceManagedBackupSource.fromMap((map['managedBackupSource'] as Map).cast<String, dynamic>())).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      persistenceConfig: map['persistenceConfig'] == null ? null : (InstancePersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      shardCount: (map['shardCount'] as int).input(),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : (map['transitEncryptionMode'] as String).input(),
      zoneDistributionConfig: map['zoneDistributionConfig'] == null ? null : (InstanceZoneDistributionConfig.fromMap((map['zoneDistributionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

