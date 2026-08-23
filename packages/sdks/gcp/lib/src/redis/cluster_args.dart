// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_config.dart';
import 'cluster_cross_cluster_replication_config.dart';
import 'cluster_gcs_source.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_managed_backup_source.dart';
import 'cluster_persistence_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_zone_distribution_config.dart';

/// {@template pulumi_redis_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_redis_cluster_cluster_args_doc}
class ClusterArgs {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  final pulumi.Input<String>? authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupConfig>? automatedBackupConfig;
  /// Cross cluster replication config
  /// Structure is documented below.
  final pulumi.Input<ClusterCrossClusterReplicationConfig>? crossClusterReplicationConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcsSource>? gcsSource;
  /// The KMS key used to encrypt the at-rest data of the cluster.
  final pulumi.Input<String>? kmsKey;
  /// Resource labels to represent user provided metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicy>? maintenancePolicy;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String>? maintenanceVersion;
  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  final pulumi.Input<ClusterManagedBackupSource>? managedBackupSource;
  /// Unique name of the resource in this scope including project and location using the form:
  /// projects/{projectId}/locations/{locationId}/clusters/{clusterId}
  final pulumi.Input<String>? name;
  /// The nodeType for the Redis cluster.
  /// If not provided, REDIS_HIGHMEM_MEDIUM will be used as default
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHCPU_MEDIUM`, `REDIS_STANDARD_LARGE`, `REDIS_HIGHMEM_XLARGE`, `REDIS_HIGHMEM_2XLARGE`, `REDIS_STANDARD_SMALL`.
  final pulumi.Input<String>? nodeType;
  /// Persistence config (RDB, AOF) for the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterPersistenceConfig>? persistenceConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterPscConfig>>? pscConfigs;
  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  final pulumi.Input<Map<String, String>>? redisConfigs;
  /// The name of the region of the Redis cluster.
  final pulumi.Input<String>? region;
  /// Optional. The number of replica nodes per shard.
  final pulumi.Input<int>? replicaCount;
  /// The serverCaMode for the TLS enabled Redis cluster.
  /// If not provided, SERVER_CA_MODE_GOOGLE_MANAGED_PER_INSTANCE_CA will be used as default
  /// Possible values are: `SERVER_CA_MODE_GOOGLE_MANAGED_PER_INSTANCE_CA`, `SERVER_CA_MODE_GOOGLE_MANAGED_SHARED_CA`, `SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA`, `SERVER_CA_MODE_UNSPECIFIED`.
  final pulumi.Input<String>? serverCaMode;
  /// The resource name of the server CA pool for an instance with SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA
  /// as the server_ca_mode.
  /// Format: projects/{project}/locations/{region}/caPools/{caPoolId}
  final pulumi.Input<String>? serverCaPool;
  /// Required. Number of shards for the Redis cluster.
  final pulumi.Input<int> shardCount;
  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  final pulumi.Input<String>? transitEncryptionMode;
  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterZoneDistributionConfig>? zoneDistributionConfig;

  /// Creates a new [ClusterArgs].
  /// [authorizationMode] Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [crossClusterReplicationConfig] Cross cluster replication config
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtectionEnabled] Optional. Indicates if the cluster is deletion protected or not.
  /// [gcsSource] Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster.
  /// [labels] Resource labels to represent user provided metadata.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the availableMaintenanceVersions field.
  /// [managedBackupSource] Backups that generated and managed by memorystore.
  /// [name] Unique name of the resource in this scope including project and location using the form:
  /// [nodeType] The nodeType for the Redis cluster.
  /// [persistenceConfig] Persistence config (RDB, AOF) for the cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfigs] Required. Each PscConfig configures the consumer network where two
  /// [redisConfigs] Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// [region] The name of the region of the Redis cluster.
  /// [replicaCount] Optional. The number of replica nodes per shard.
  /// [serverCaMode] The serverCaMode for the TLS enabled Redis cluster.
  /// [serverCaPool] The resource name of the server CA pool for an instance with SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA
  /// [shardCount] Required. Number of shards for the Redis cluster.
  /// [transitEncryptionMode] Optional. The in-transit encryption for the Redis cluster.
  /// [zoneDistributionConfig] Immutable. Zone distribution config for Memorystore Redis cluster.
  const ClusterArgs({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.crossClusterReplicationConfig,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.gcsSource,
    this.kmsKey,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.name,
    this.nodeType,
    this.persistenceConfig,
    this.project,
    this.pscConfigs,
    this.redisConfigs,
    this.region,
    this.replicaCount,
    this.serverCaMode,
    this.serverCaPool,
    required this.shardCount,
    this.transitEncryptionMode,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'crossClusterReplicationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCrossClusterReplicationConfig, Map<String, dynamic>>(crossClusterReplicationConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<ClusterGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSource': ?pulumi.Input.mapOptionalInputValue<ClusterManagedBackupSource, Map<String, dynamic>>(managedBackupSource, (value) => value.toMap()),
      'name': ?name,
      'nodeType': ?nodeType,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'project': ?project,
      'pscConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterPscConfig>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<ClusterPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redisConfigs': ?redisConfigs,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'shardCount': shardCount,
      'transitEncryptionMode': ?transitEncryptionMode,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      authorizationMode: (() { final guardedValue = map['authorizationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automatedBackupConfig: (() { final guardedValue = map['automatedBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossClusterReplicationConfig: (() { final guardedValue = map['crossClusterReplicationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterCrossClusterReplicationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcsSource: (() { final guardedValue = map['gcsSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterGcsSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBackupSource: (() { final guardedValue = map['managedBackupSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterManagedBackupSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistenceConfig: (() { final guardedValue = map['persistenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPersistenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConfigs: (() { final guardedValue = map['pscConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterPscConfig>(guardedValue, (value) => ClusterPscConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redisConfigs: (() { final guardedValue = map['redisConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverCaMode: (() { final guardedValue = map['serverCaMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCaPool: (() { final guardedValue = map['serverCaPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: pulumi.Input.fromValue(map['shardCount'] as int),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneDistributionConfig: (() { final guardedValue = map['zoneDistributionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterZoneDistributionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
