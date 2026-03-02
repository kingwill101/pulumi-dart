// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_config.dart';
import 'cluster_cross_cluster_replication_config.dart';
import 'cluster_discovery_endpoint.dart';
import 'cluster_gcs_source.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_maintenance_schedule.dart';
import 'cluster_managed_backup_source.dart';
import 'cluster_managed_server_ca.dart';
import 'cluster_persistence_config.dart';
import 'cluster_psc_config.dart';
import 'cluster_psc_connection.dart';
import 'cluster_psc_service_attachment.dart';
import 'cluster_state_info.dart';
import 'cluster_zone_distribution_config.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// Default value is `AUTH_MODE_DISABLED`.
  /// Possible values are: `AUTH_MODE_UNSPECIFIED`, `AUTH_MODE_IAM_AUTH`, `AUTH_MODE_DISABLED`.
  final pulumi.Input<String>? authorizationMode;
  /// The automated backup config for a instance.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupConfig>? automatedBackupConfig;
  /// This field is used to determine the available maintenance versions for the self service update.
  final pulumi.Input<List<String>>? availableMaintenanceVersions;
  /// The backup collection full resource name.
  /// Example: projects/{project}/locations/{location}/backupCollections/{collection}
  final pulumi.Input<String>? backupCollection;
  /// The timestamp associated with the cluster creation request. A timestamp in
  /// RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional
  /// digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Cross cluster replication config
  /// Structure is documented below.
  final pulumi.Input<ClusterCrossClusterReplicationConfig>? crossClusterReplicationConfig;
  /// Optional. Indicates if the cluster is deletion protected or not.
  /// If the value if set to true, any delete cluster operation will fail.
  /// Default value is true.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// Output only. Endpoints created on each given network,
  /// for Redis clients to connect to the cluster.
  /// Currently only one endpoint is supported.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterDiscoveryEndpoint>>? discoveryEndpoints;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This field represents the actual maintenance version of the cluster.
  final pulumi.Input<String>? effectiveMaintenanceVersion;
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
  /// Upcoming maintenance schedule.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterMaintenanceSchedule>>? maintenanceSchedules;
  /// This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// *Note*: This field can only be specified when updating an existing cluster to a newer version. Downgrades are currently not supported!
  final pulumi.Input<String>? maintenanceVersion;
  /// Backups that generated and managed by memorystore.
  /// Structure is documented below.
  final pulumi.Input<ClusterManagedBackupSource>? managedBackupSource;
  /// Cluster's Certificate Authority. This field will only be populated if Redis Cluster's transit_encryption_mode is TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION
  /// Structure is documented below.
  final pulumi.Input<List<ClusterManagedServerCa>>? managedServerCas;
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
  /// Output only. Redis memory precise size in GB for the entire cluster.
  final pulumi.Input<double>? preciseSizeGb;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Each PscConfig configures the consumer network where two
  /// network addresses will be designated to the cluster for client access.
  /// Currently, only one PscConfig is supported.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterPscConfig>>? pscConfigs;
  /// Output only. PSC connections for discovery of the cluster topology and accessing the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterPscConnection>>? pscConnections;
  /// Service attachment details to configure Psc connections.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterPscServiceAttachment>>? pscServiceAttachments;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// Please check Memorystore documentation for the list of supported parameters:
  /// https://cloud.google.com/memorystore/docs/cluster/supported-instance-configurations
  final pulumi.Input<Map<String, String>>? redisConfigs;
  /// The name of the region of the Redis cluster.
  final pulumi.Input<String>? region;
  /// Optional. The number of replica nodes per shard.
  final pulumi.Input<int>? replicaCount;
  /// Required. Number of shards for the Redis cluster.
  final pulumi.Input<int>? shardCount;
  /// Output only. Redis memory size in GB for the entire cluster.
  final pulumi.Input<int>? sizeGb;
  /// The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  final pulumi.Input<String>? state;
  /// Output only. Additional information about the current state of the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterStateInfo>>? stateInfos;
  /// Optional. The in-transit encryption for the Redis cluster.
  /// If not provided, encryption is disabled for the cluster.
  /// Default value is `TRANSIT_ENCRYPTION_MODE_DISABLED`.
  /// Possible values are: `TRANSIT_ENCRYPTION_MODE_UNSPECIFIED`, `TRANSIT_ENCRYPTION_MODE_DISABLED`, `TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION`.
  final pulumi.Input<String>? transitEncryptionMode;
  /// System assigned, unique identifier for the cluster.
  final pulumi.Input<String>? uid;
  /// Immutable. Zone distribution config for Memorystore Redis cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterZoneDistributionConfig>? zoneDistributionConfig;

  /// Creates a new [ClusterState].
  /// [authorizationMode] Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  /// [automatedBackupConfig] The automated backup config for a instance.
  /// [availableMaintenanceVersions] This field is used to determine the available maintenance versions for the self service update.
  /// [backupCollection] The backup collection full resource name.
  /// [createTime] The timestamp associated with the cluster creation request. A timestamp in
  /// [crossClusterReplicationConfig] Cross cluster replication config
  /// [deletionProtectionEnabled] Optional. Indicates if the cluster is deletion protected or not.
  /// [discoveryEndpoints] Output only. Endpoints created on each given network,
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveMaintenanceVersion] This field represents the actual maintenance version of the cluster.
  /// [gcsSource] Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.
  /// [kmsKey] The KMS key used to encrypt the at-rest data of the cluster.
  /// [labels] Resource labels to represent user provided metadata.
  /// [maintenancePolicy] Maintenance policy for a cluster
  /// [maintenanceSchedules] Upcoming maintenance schedule.
  /// [maintenanceVersion] This field can be used to trigger self service update to indicate the desired maintenance version. The input to this field can be determined by the available_maintenance_versions field.
  /// [managedBackupSource] Backups that generated and managed by memorystore.
  /// [managedServerCas] Cluster's Certificate Authority. This field will only be populated if Redis Cluster's transit_encryption_mode is TRANSIT_ENCRYPTION_MODE_SERVER_AUTHENTICATION
  /// [name] Unique name of the resource in this scope including project and location using the form:
  /// [nodeType] The nodeType for the Redis cluster.
  /// [persistenceConfig] Persistence config (RDB, AOF) for the cluster.
  /// [preciseSizeGb] Output only. Redis memory precise size in GB for the entire cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConfigs] Required. Each PscConfig configures the consumer network where two
  /// [pscConnections] Output only. PSC connections for discovery of the cluster topology and accessing the cluster.
  /// [pscServiceAttachments] Service attachment details to configure Psc connections.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [redisConfigs] Configure Redis Cluster behavior using a subset of native Redis configuration parameters.
  /// [region] The name of the region of the Redis cluster.
  /// [replicaCount] Optional. The number of replica nodes per shard.
  /// [shardCount] Required. Number of shards for the Redis cluster.
  /// [sizeGb] Output only. Redis memory size in GB for the entire cluster.
  /// [state] The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  /// [stateInfos] Output only. Additional information about the current state of the cluster.
  /// [transitEncryptionMode] Optional. The in-transit encryption for the Redis cluster.
  /// [uid] System assigned, unique identifier for the cluster.
  /// [zoneDistributionConfig] Immutable. Zone distribution config for Memorystore Redis cluster.
  ClusterState({
    this.authorizationMode,
    this.automatedBackupConfig,
    this.availableMaintenanceVersions,
    this.backupCollection,
    this.createTime,
    this.crossClusterReplicationConfig,
    this.deletionProtectionEnabled,
    this.discoveryEndpoints,
    this.effectiveLabels,
    this.effectiveMaintenanceVersion,
    this.gcsSource,
    this.kmsKey,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.managedBackupSource,
    this.managedServerCas,
    this.name,
    this.nodeType,
    this.persistenceConfig,
    this.preciseSizeGb,
    this.project,
    this.pscConfigs,
    this.pscConnections,
    this.pscServiceAttachments,
    this.pulumiLabels,
    this.redisConfigs,
    this.region,
    this.replicaCount,
    this.shardCount,
    this.sizeGb,
    this.state,
    this.stateInfos,
    this.transitEncryptionMode,
    this.uid,
    this.zoneDistributionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfig, (value) => value.toMap()),
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupCollection': ?backupCollection,
      'createTime': ?createTime,
      'crossClusterReplicationConfig': ?pulumi.Input.mapOptionalInputValue<ClusterCrossClusterReplicationConfig, Map<String, dynamic>>(crossClusterReplicationConfig, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'discoveryEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterDiscoveryEndpoint>, List<Map<String, dynamic>>>(discoveryEndpoints, (value) => pulumi.Input.encodeList<ClusterDiscoveryEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': ?effectiveLabels,
      'effectiveMaintenanceVersion': ?effectiveMaintenanceVersion,
      'gcsSource': ?pulumi.Input.mapOptionalInputValue<ClusterGcsSource, Map<String, dynamic>>(gcsSource, (value) => value.toMap()),
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<ClusterMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<ClusterMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSource': ?pulumi.Input.mapOptionalInputValue<ClusterManagedBackupSource, Map<String, dynamic>>(managedBackupSource, (value) => value.toMap()),
      'managedServerCas': ?pulumi.Input.mapOptionalInputValue<List<ClusterManagedServerCa>, List<Map<String, dynamic>>>(managedServerCas, (value) => pulumi.Input.encodeList<ClusterManagedServerCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeType': ?nodeType,
      'persistenceConfig': ?pulumi.Input.mapOptionalInputValue<ClusterPersistenceConfig, Map<String, dynamic>>(persistenceConfig, (value) => value.toMap()),
      'preciseSizeGb': ?preciseSizeGb,
      'project': ?project,
      'pscConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterPscConfig>, List<Map<String, dynamic>>>(pscConfigs, (value) => pulumi.Input.encodeList<ClusterPscConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscConnections': ?pulumi.Input.mapOptionalInputValue<List<ClusterPscConnection>, List<Map<String, dynamic>>>(pscConnections, (value) => pulumi.Input.encodeList<ClusterPscConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscServiceAttachments': ?pulumi.Input.mapOptionalInputValue<List<ClusterPscServiceAttachment>, List<Map<String, dynamic>>>(pscServiceAttachments, (value) => pulumi.Input.encodeList<ClusterPscServiceAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': ?pulumiLabels,
      'redisConfigs': ?redisConfigs,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'shardCount': ?shardCount,
      'sizeGb': ?sizeGb,
      'state': ?state,
      'stateInfos': ?pulumi.Input.mapOptionalInputValue<List<ClusterStateInfo>, List<Map<String, dynamic>>>(stateInfos, (value) => pulumi.Input.encodeList<ClusterStateInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'transitEncryptionMode': ?transitEncryptionMode,
      'uid': ?uid,
      'zoneDistributionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfig, (value) => value.toMap()),
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      authorizationMode: map['authorizationMode'] == null ? null : (map['authorizationMode'] as String).input(),
      automatedBackupConfig: map['automatedBackupConfig'] == null ? null : (ClusterAutomatedBackupConfig.fromMap((map['automatedBackupConfig'] as Map).cast<String, dynamic>())).input(),
      availableMaintenanceVersions: map['availableMaintenanceVersions'] == null ? null : ((map['availableMaintenanceVersions'] as List).cast<String>()).input(),
      backupCollection: map['backupCollection'] == null ? null : (map['backupCollection'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      crossClusterReplicationConfig: map['crossClusterReplicationConfig'] == null ? null : (ClusterCrossClusterReplicationConfig.fromMap((map['crossClusterReplicationConfig'] as Map).cast<String, dynamic>())).input(),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : (map['deletionProtectionEnabled'] as bool).input(),
      discoveryEndpoints: map['discoveryEndpoints'] == null ? null : (pulumi.Input.decodeList<ClusterDiscoveryEndpoint>(map['discoveryEndpoints'], (value) => ClusterDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] == null ? null : (map['effectiveMaintenanceVersion'] as String).input(),
      gcsSource: map['gcsSource'] == null ? null : (ClusterGcsSource.fromMap((map['gcsSource'] as Map).cast<String, dynamic>())).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (ClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : (pulumi.Input.decodeList<ClusterMaintenanceSchedule>(map['maintenanceSchedules'], (value) => ClusterMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenanceVersion: map['maintenanceVersion'] == null ? null : (map['maintenanceVersion'] as String).input(),
      managedBackupSource: map['managedBackupSource'] == null ? null : (ClusterManagedBackupSource.fromMap((map['managedBackupSource'] as Map).cast<String, dynamic>())).input(),
      managedServerCas: map['managedServerCas'] == null ? null : (pulumi.Input.decodeList<ClusterManagedServerCa>(map['managedServerCas'], (value) => ClusterManagedServerCa.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      persistenceConfig: map['persistenceConfig'] == null ? null : (ClusterPersistenceConfig.fromMap((map['persistenceConfig'] as Map).cast<String, dynamic>())).input(),
      preciseSizeGb: map['preciseSizeGb'] == null ? null : (map['preciseSizeGb'] as double).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pscConfigs: map['pscConfigs'] == null ? null : (pulumi.Input.decodeList<ClusterPscConfig>(map['pscConfigs'], (value) => ClusterPscConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pscConnections: map['pscConnections'] == null ? null : (pulumi.Input.decodeList<ClusterPscConnection>(map['pscConnections'], (value) => ClusterPscConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pscServiceAttachments: map['pscServiceAttachments'] == null ? null : (pulumi.Input.decodeList<ClusterPscServiceAttachment>(map['pscServiceAttachments'], (value) => ClusterPscServiceAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      redisConfigs: map['redisConfigs'] == null ? null : ((map['redisConfigs'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replicaCount: map['replicaCount'] == null ? null : (map['replicaCount'] as int).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount'] as int).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateInfos: map['stateInfos'] == null ? null : (pulumi.Input.decodeList<ClusterStateInfo>(map['stateInfos'], (value) => ClusterStateInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      transitEncryptionMode: map['transitEncryptionMode'] == null ? null : (map['transitEncryptionMode'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      zoneDistributionConfig: map['zoneDistributionConfig'] == null ? null : (ClusterZoneDistributionConfig.fromMap((map['zoneDistributionConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

