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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maintenance policy for a cluster
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenancePolicy>? maintenancePolicy;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
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
  /// Possible values are: `REDIS_SHARED_CORE_NANO`, `REDIS_HIGHMEM_MEDIUM`, `REDIS_HIGHMEM_XLARGE`, `REDIS_STANDARD_SMALL`.
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
  /// [deletionProtectionEnabled] Optional. Indicates if the cluster is deletion protected or not.
  /// [gcsSource] Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster.
  /// [labels] Resource labels to represent user provided metadata.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// [managedBackupSource] Backups that generated and managed by memorystore.
  /// [name] Unique name of the resource in this scope including project and location using the form:
  /// [nodeType] The nodeType for the Redis cluster.
  /// [persistenceConfig] Persistence config (RDB, AOF) for the cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfigs] Required. Each PscConfig configures the consumer network where two
  /// [redisConfigs] Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// [region] The name of the region of the Redis cluster.
  /// [replicaCount] Optional. The number of replica nodes per shard.
  /// [shardCount] Required. Number of shards for the Redis cluster.
  /// [transitEncryptionMode] Optional. The in-transit encryption for the Redis cluster.
  /// [zoneDistributionConfig] Immutable. Zone distribution config for Memorystore Redis cluster.
  ClusterArgs({
    pulumi.Output<String>? authorizationMode,
    pulumi.Output<ClusterAutomatedBackupConfig>? automatedBackupConfig,
    pulumi.Output<ClusterCrossClusterReplicationConfig>? crossClusterReplicationConfig,
    pulumi.Output<bool>? deletionProtectionEnabled,
    pulumi.Output<ClusterGcsSource>? gcsSource,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<ClusterMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<String>? maintenanceVersion,
    pulumi.Output<ClusterManagedBackupSource>? managedBackupSource,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nodeType,
    pulumi.Output<ClusterPersistenceConfig>? persistenceConfig,
    pulumi.Output<String>? project,
    pulumi.Output<List<ClusterPscConfig>>? pscConfigs,
    pulumi.Output<Map<String, String>>? redisConfigs,
    pulumi.Output<String>? region,
    pulumi.Output<int>? replicaCount,
    required pulumi.Output<int> shardCount,
    pulumi.Output<String>? transitEncryptionMode,
    pulumi.Output<ClusterZoneDistributionConfig>? zoneDistributionConfig,
  }) :
      authorizationMode = pulumi.Input.asOptionalInput<String>(authorizationMode),
      automatedBackupConfig = pulumi.Input.asOptionalInput<ClusterAutomatedBackupConfig>(automatedBackupConfig),
      crossClusterReplicationConfig = pulumi.Input.asOptionalInput<ClusterCrossClusterReplicationConfig>(crossClusterReplicationConfig),
      deletionProtectionEnabled = pulumi.Input.asOptionalInput<bool>(deletionProtectionEnabled),
      gcsSource = pulumi.Input.asOptionalInput<ClusterGcsSource>(gcsSource),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maintenancePolicy = pulumi.Input.asOptionalInput<ClusterMaintenancePolicy>(maintenancePolicy),
      maintenanceVersion = pulumi.Input.asOptionalInput<String>(maintenanceVersion),
      managedBackupSource = pulumi.Input.asOptionalInput<ClusterManagedBackupSource>(managedBackupSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      persistenceConfig = pulumi.Input.asOptionalInput<ClusterPersistenceConfig>(persistenceConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfigs = pulumi.Input.asOptionalInput<List<ClusterPscConfig>>(pscConfigs),
      redisConfigs = pulumi.Input.asOptionalInput<Map<String, String>>(redisConfigs),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaCount = pulumi.Input.asOptionalInput<int>(replicaCount),
      shardCount = pulumi.Input.asInput<int>(shardCount),
      transitEncryptionMode = pulumi.Input.asOptionalInput<String>(transitEncryptionMode),
      zoneDistributionConfig = pulumi.Input.asOptionalInput<ClusterZoneDistributionConfig>(zoneDistributionConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'crossClusterReplicationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCrossClusterReplicationConfig, Map<String, dynamic>>(crossClusterReplicationConfig, (value) => value.toMap()),
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
      'shardCount': shardCount,
      'transitEncryptionMode': ?transitEncryptionMode,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      authorizationMode: map['authorizationMode'] == null ? null : pulumi.Output.create<String>(map['authorizationMode'] as String),
      automatedBackupConfig: map['automatedBackupConfig'] == null ? null : pulumi.Output.create<ClusterAutomatedBackupConfig>(ClusterAutomatedBackupConfig.fromMap((map['automatedBackupConfig'] as Map).cast<String, dynamic>())),
      crossClusterReplicationConfig: map['crossClusterReplicationConfig'] == null ? null : pulumi.Output.create<ClusterCrossClusterReplicationConfig>(ClusterCrossClusterReplicationConfig.fromMap((map['crossClusterReplicationConfig'] as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['deletionProtectionEnabled'] as bool),
      gcsSource: map['gcsSource'] == null ? null : pulumi.Output.create<ClusterGcsSource>(ClusterGcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<ClusterMaintenancePolicy>(ClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : pulumi.Output.create<String>(map['maintenanceVersion'] as String),
      managedBackupSource: map['managedBackupSource'] == null ? null : pulumi.Output.create<ClusterManagedBackupSource>(ClusterManagedBackupSource.fromMap((map['managedBackupSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      persistenceConfig: map['persistenceConfig'] == null ? null : pulumi.Output.create<ClusterPersistenceConfig>(ClusterPersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConfigs: map['pscConfigs'] == null ? null : pulumi.Output.create<List<ClusterPscConfig>>(pulumi.Input.decodeList<ClusterPscConfig>(map['pscConfigs'], (value) => ClusterPscConfig.fromMap((value as Map).cast<String, dynamic>()))),
      redisConfigs: map['redisConfigs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['redisConfigs'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicaCount: map['replicaCount'] == null ? null : pulumi.Output.create<int>(map['replicaCount'] as int),
      shardCount: pulumi.Output.create<int>(map['shardCount'] as int),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : pulumi.Output.create<String>(map['transitEncryptionMode'] as String),
      zoneDistributionConfig: map['zoneDistributionConfig'] == null ? null : pulumi.Output.create<ClusterZoneDistributionConfig>(ClusterZoneDistributionConfig.fromMap((map['zoneDistributionConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

