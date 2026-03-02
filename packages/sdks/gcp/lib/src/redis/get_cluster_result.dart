// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_config.dart';
import 'get_cluster_cross_cluster_replication_config.dart';
import 'get_cluster_discovery_endpoint.dart';
import 'get_cluster_gcs_source.dart';
import 'get_cluster_maintenance_policy.dart';
import 'get_cluster_maintenance_schedule.dart';
import 'get_cluster_managed_backup_source.dart';
import 'get_cluster_managed_server_ca.dart';
import 'get_cluster_persistence_config.dart';
import 'get_cluster_psc_config.dart';
import 'get_cluster_psc_connection.dart';
import 'get_cluster_psc_service_attachment.dart';
import 'get_cluster_state_info.dart';
import 'get_cluster_zone_distribution_config.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final String authorizationMode;
  final List<GetClusterAutomatedBackupConfig> automatedBackupConfigs;
  final List<String> availableMaintenanceVersions;
  final String backupCollection;
  final String createTime;
  final List<GetClusterCrossClusterReplicationConfig> crossClusterReplicationConfigs;
  final bool deletionProtectionEnabled;
  final List<GetClusterDiscoveryEndpoint> discoveryEndpoints;
  final Map<String, String> effectiveLabels;
  final String effectiveMaintenanceVersion;
  final List<GetClusterGcsSource> gcsSources;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final Map<String, String> labels;
  final List<GetClusterMaintenancePolicy> maintenancePolicies;
  final List<GetClusterMaintenanceSchedule> maintenanceSchedules;
  final String maintenanceVersion;
  final List<GetClusterManagedBackupSource> managedBackupSources;
  final List<GetClusterManagedServerCa> managedServerCas;
  final String name;
  final String nodeType;
  final List<GetClusterPersistenceConfig> persistenceConfigs;
  final double preciseSizeGb;
  final String? project;
  final List<GetClusterPscConfig> pscConfigs;
  final List<GetClusterPscConnection> pscConnections;
  final List<GetClusterPscServiceAttachment> pscServiceAttachments;
  final Map<String, String> pulumiLabels;
  final Map<String, String> redisConfigs;
  final String? region;
  final int replicaCount;
  final int shardCount;
  final int sizeGb;
  final String state;
  final List<GetClusterStateInfo> stateInfos;
  final String transitEncryptionMode;
  final String uid;
  final List<GetClusterZoneDistributionConfig> zoneDistributionConfigs;

  /// Creates a new [GetClusterResult].
  /// [authorizationMode] Required.
  /// [automatedBackupConfigs] Required.
  /// [availableMaintenanceVersions] Required.
  /// [backupCollection] Required.
  /// [createTime] Required.
  /// [crossClusterReplicationConfigs] Required.
  /// [deletionProtectionEnabled] Required.
  /// [discoveryEndpoints] Required.
  /// [effectiveLabels] Required.
  /// [effectiveMaintenanceVersion] Required.
  /// [gcsSources] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] Required.
  /// [labels] Required.
  /// [maintenancePolicies] Required.
  /// [maintenanceSchedules] Required.
  /// [maintenanceVersion] Required.
  /// [managedBackupSources] Required.
  /// [managedServerCas] Required.
  /// [name] Required.
  /// [nodeType] Required.
  /// [persistenceConfigs] Required.
  /// [preciseSizeGb] Required.
  /// [project] Optional.
  /// [pscConfigs] Required.
  /// [pscConnections] Required.
  /// [pscServiceAttachments] Required.
  /// [pulumiLabels] Required.
  /// [redisConfigs] Required.
  /// [region] Optional.
  /// [replicaCount] Required.
  /// [shardCount] Required.
  /// [sizeGb] Required.
  /// [state] Required.
  /// [stateInfos] Required.
  /// [transitEncryptionMode] Required.
  /// [uid] Required.
  /// [zoneDistributionConfigs] Required.
  GetClusterResult({
    required this.authorizationMode,
    required this.automatedBackupConfigs,
    required this.availableMaintenanceVersions,
    required this.backupCollection,
    required this.createTime,
    required this.crossClusterReplicationConfigs,
    required this.deletionProtectionEnabled,
    required this.discoveryEndpoints,
    required this.effectiveLabels,
    required this.effectiveMaintenanceVersion,
    required this.gcsSources,
    required this.id,
    required this.kmsKey,
    required this.labels,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.maintenanceVersion,
    required this.managedBackupSources,
    required this.managedServerCas,
    required this.name,
    required this.nodeType,
    required this.persistenceConfigs,
    required this.preciseSizeGb,
    this.project,
    required this.pscConfigs,
    required this.pscConnections,
    required this.pscServiceAttachments,
    required this.pulumiLabels,
    required this.redisConfigs,
    this.region,
    required this.replicaCount,
    required this.shardCount,
    required this.sizeGb,
    required this.state,
    required this.stateInfos,
    required this.transitEncryptionMode,
    required this.uid,
    required this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': authorizationMode,
      'automatedBackupConfigs': pulumi.Input.encodeList<GetClusterAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfigs, (value) => value.toMap()),
      'availableMaintenanceVersions': availableMaintenanceVersions,
      'backupCollection': backupCollection,
      'createTime': createTime,
      'crossClusterReplicationConfigs': pulumi.Input.encodeList<GetClusterCrossClusterReplicationConfig, Map<String, dynamic>>(crossClusterReplicationConfigs, (value) => value.toMap()),
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'discoveryEndpoints': pulumi.Input.encodeList<GetClusterDiscoveryEndpoint, Map<String, dynamic>>(discoveryEndpoints, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'effectiveMaintenanceVersion': effectiveMaintenanceVersion,
      'gcsSources': pulumi.Input.encodeList<GetClusterGcsSource, Map<String, dynamic>>(gcsSources, (value) => value.toMap()),
      'id': id,
      'kmsKey': kmsKey,
      'labels': labels,
      'maintenancePolicies': pulumi.Input.encodeList<GetClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'maintenanceSchedules': pulumi.Input.encodeList<GetClusterMaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap()),
      'maintenanceVersion': maintenanceVersion,
      'managedBackupSources': pulumi.Input.encodeList<GetClusterManagedBackupSource, Map<String, dynamic>>(managedBackupSources, (value) => value.toMap()),
      'managedServerCas': pulumi.Input.encodeList<GetClusterManagedServerCa, Map<String, dynamic>>(managedServerCas, (value) => value.toMap()),
      'name': name,
      'nodeType': nodeType,
      'persistenceConfigs': pulumi.Input.encodeList<GetClusterPersistenceConfig, Map<String, dynamic>>(persistenceConfigs, (value) => value.toMap()),
      'preciseSizeGb': preciseSizeGb,
      'project': ?project,
      'pscConfigs': pulumi.Input.encodeList<GetClusterPscConfig, Map<String, dynamic>>(pscConfigs, (value) => value.toMap()),
      'pscConnections': pulumi.Input.encodeList<GetClusterPscConnection, Map<String, dynamic>>(pscConnections, (value) => value.toMap()),
      'pscServiceAttachments': pulumi.Input.encodeList<GetClusterPscServiceAttachment, Map<String, dynamic>>(pscServiceAttachments, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'redisConfigs': redisConfigs,
      'region': ?region,
      'replicaCount': replicaCount,
      'shardCount': shardCount,
      'sizeGb': sizeGb,
      'state': state,
      'stateInfos': pulumi.Input.encodeList<GetClusterStateInfo, Map<String, dynamic>>(stateInfos, (value) => value.toMap()),
      'transitEncryptionMode': transitEncryptionMode,
      'uid': uid,
      'zoneDistributionConfigs': pulumi.Input.encodeList<GetClusterZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      authorizationMode: map['authorizationMode'] as String,
      automatedBackupConfigs: pulumi.Input.decodeList<GetClusterAutomatedBackupConfig>(map['automatedBackupConfigs'], (value) => GetClusterAutomatedBackupConfig.fromMap((value as Map).cast<String, dynamic>())),
      availableMaintenanceVersions: (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupCollection: map['backupCollection'] as String,
      createTime: map['createTime'] as String,
      crossClusterReplicationConfigs: pulumi.Input.decodeList<GetClusterCrossClusterReplicationConfig>(map['crossClusterReplicationConfigs'], (value) => GetClusterCrossClusterReplicationConfig.fromMap((value as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      discoveryEndpoints: pulumi.Input.decodeList<GetClusterDiscoveryEndpoint>(map['discoveryEndpoints'], (value) => GetClusterDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] as String,
      gcsSources: pulumi.Input.decodeList<GetClusterGcsSource>(map['gcsSources'], (value) => GetClusterGcsSource.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicies: pulumi.Input.decodeList<GetClusterMaintenancePolicy>(map['maintenancePolicies'], (value) => GetClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceSchedules: pulumi.Input.decodeList<GetClusterMaintenanceSchedule>(map['maintenanceSchedules'], (value) => GetClusterMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      managedBackupSources: pulumi.Input.decodeList<GetClusterManagedBackupSource>(map['managedBackupSources'], (value) => GetClusterManagedBackupSource.fromMap((value as Map).cast<String, dynamic>())),
      managedServerCas: pulumi.Input.decodeList<GetClusterManagedServerCa>(map['managedServerCas'], (value) => GetClusterManagedServerCa.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      persistenceConfigs: pulumi.Input.decodeList<GetClusterPersistenceConfig>(map['persistenceConfigs'], (value) => GetClusterPersistenceConfig.fromMap((value as Map).cast<String, dynamic>())),
      preciseSizeGb: map['preciseSizeGb'] as double,
      project: map['project'] == null ? null : map['project']! as String,
      pscConfigs: pulumi.Input.decodeList<GetClusterPscConfig>(map['pscConfigs'], (value) => GetClusterPscConfig.fromMap((value as Map).cast<String, dynamic>())),
      pscConnections: pulumi.Input.decodeList<GetClusterPscConnection>(map['pscConnections'], (value) => GetClusterPscConnection.fromMap((value as Map).cast<String, dynamic>())),
      pscServiceAttachments: pulumi.Input.decodeList<GetClusterPscServiceAttachment>(map['pscServiceAttachments'], (value) => GetClusterPscServiceAttachment.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      redisConfigs: (map['redisConfigs'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region']! as String,
      replicaCount: map['replicaCount'] as int,
      shardCount: map['shardCount'] as int,
      sizeGb: map['sizeGb'] as int,
      state: map['state'] as String,
      stateInfos: pulumi.Input.decodeList<GetClusterStateInfo>(map['stateInfos'], (value) => GetClusterStateInfo.fromMap((value as Map).cast<String, dynamic>())),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
      zoneDistributionConfigs: pulumi.Input.decodeList<GetClusterZoneDistributionConfig>(map['zoneDistributionConfigs'], (value) => GetClusterZoneDistributionConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

