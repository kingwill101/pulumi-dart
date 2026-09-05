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
  final String? aclPolicy;
  final String? authorizationMode;
  final List<GetClusterAutomatedBackupConfig>? automatedBackupConfigs;
  final List<String>? availableMaintenanceVersions;
  final String? backupCollection;
  final String? createTime;
  final List<GetClusterCrossClusterReplicationConfig>? crossClusterReplicationConfigs;
  final String? deletionPolicy;
  final bool? deletionProtectionEnabled;
  final List<GetClusterDiscoveryEndpoint>? discoveryEndpoints;
  final Map<String, String>? effectiveLabels;
  final String? effectiveMaintenanceVersion;
  final List<GetClusterGcsSource>? gcsSources;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? isAclPolicyInSync;
  final String? kmsKey;
  final Map<String, String>? labels;
  final List<GetClusterMaintenancePolicy>? maintenancePolicies;
  final List<GetClusterMaintenanceSchedule>? maintenanceSchedules;
  final String? maintenanceVersion;
  final List<GetClusterManagedBackupSource>? managedBackupSources;
  final List<GetClusterManagedServerCa>? managedServerCas;
  final String? name;
  final String? nodeType;
  final List<GetClusterPersistenceConfig>? persistenceConfigs;
  final double? preciseSizeGb;
  final String? project;
  final List<GetClusterPscConfig>? pscConfigs;
  final List<GetClusterPscConnection>? pscConnections;
  final List<GetClusterPscServiceAttachment>? pscServiceAttachments;
  final Map<String, String>? pulumiLabels;
  final Map<String, String>? redisConfigs;
  final String? region;
  final int? replicaCount;
  final String? serverCaMode;
  final String? serverCaPool;
  final int? shardCount;
  final int? sizeGb;
  final String? state;
  final List<GetClusterStateInfo>? stateInfos;
  final String? transitEncryptionMode;
  final String? uid;
  final List<GetClusterZoneDistributionConfig>? zoneDistributionConfigs;

  /// Creates a new [GetClusterResult].
  /// [aclPolicy] Optional.
  /// [authorizationMode] Optional.
  /// [automatedBackupConfigs] Optional.
  /// [availableMaintenanceVersions] Optional.
  /// [backupCollection] Optional.
  /// [createTime] Optional.
  /// [crossClusterReplicationConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtectionEnabled] Optional.
  /// [discoveryEndpoints] Optional.
  /// [effectiveLabels] Optional.
  /// [effectiveMaintenanceVersion] Optional.
  /// [gcsSources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isAclPolicyInSync] Optional.
  /// [kmsKey] Optional.
  /// [labels] Optional.
  /// [maintenancePolicies] Optional.
  /// [maintenanceSchedules] Optional.
  /// [maintenanceVersion] Optional.
  /// [managedBackupSources] Optional.
  /// [managedServerCas] Optional.
  /// [name] Optional.
  /// [nodeType] Optional.
  /// [persistenceConfigs] Optional.
  /// [preciseSizeGb] Optional.
  /// [project] Optional.
  /// [pscConfigs] Optional.
  /// [pscConnections] Optional.
  /// [pscServiceAttachments] Optional.
  /// [pulumiLabels] Optional.
  /// [redisConfigs] Optional.
  /// [region] Optional.
  /// [replicaCount] Optional.
  /// [serverCaMode] Optional.
  /// [serverCaPool] Optional.
  /// [shardCount] Optional.
  /// [sizeGb] Optional.
  /// [state] Optional.
  /// [stateInfos] Optional.
  /// [transitEncryptionMode] Optional.
  /// [uid] Optional.
  /// [zoneDistributionConfigs] Optional.
  const GetClusterResult({
    this.aclPolicy,
    this.authorizationMode,
    this.automatedBackupConfigs,
    this.availableMaintenanceVersions,
    this.backupCollection,
    this.createTime,
    this.crossClusterReplicationConfigs,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.discoveryEndpoints,
    this.effectiveLabels,
    this.effectiveMaintenanceVersion,
    this.gcsSources,
    this.id,
    this.isAclPolicyInSync,
    this.kmsKey,
    this.labels,
    this.maintenancePolicies,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.managedBackupSources,
    this.managedServerCas,
    this.name,
    this.nodeType,
    this.persistenceConfigs,
    this.preciseSizeGb,
    this.project,
    this.pscConfigs,
    this.pscConnections,
    this.pscServiceAttachments,
    this.pulumiLabels,
    this.redisConfigs,
    this.region,
    this.replicaCount,
    this.serverCaMode,
    this.serverCaPool,
    this.shardCount,
    this.sizeGb,
    this.state,
    this.stateInfos,
    this.transitEncryptionMode,
    this.uid,
    this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicy': ?aclPolicy,
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfigs': ?(() { final guardedValue = automatedBackupConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterAutomatedBackupConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupCollection': ?backupCollection,
      'createTime': ?createTime,
      'crossClusterReplicationConfigs': ?(() { final guardedValue = crossClusterReplicationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterCrossClusterReplicationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'discoveryEndpoints': ?(() { final guardedValue = discoveryEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterDiscoveryEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'effectiveMaintenanceVersion': ?effectiveMaintenanceVersion,
      'gcsSources': ?(() { final guardedValue = gcsSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterGcsSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'isAclPolicyInSync': ?isAclPolicyInSync,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceSchedules': ?(() { final guardedValue = maintenanceSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterMaintenanceSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSources': ?(() { final guardedValue = managedBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterManagedBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedServerCas': ?(() { final guardedValue = managedServerCas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterManagedServerCa, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'nodeType': ?nodeType,
      'persistenceConfigs': ?(() { final guardedValue = persistenceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPersistenceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'preciseSizeGb': ?preciseSizeGb,
      'project': ?project,
      'pscConfigs': ?(() { final guardedValue = pscConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPscConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pscConnections': ?(() { final guardedValue = pscConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPscConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pscServiceAttachments': ?(() { final guardedValue = pscServiceAttachments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterPscServiceAttachment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'redisConfigs': ?redisConfigs,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'shardCount': ?shardCount,
      'sizeGb': ?sizeGb,
      'state': ?state,
      'stateInfos': ?(() { final guardedValue = stateInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterStateInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'transitEncryptionMode': ?transitEncryptionMode,
      'uid': ?uid,
      'zoneDistributionConfigs': ?(() { final guardedValue = zoneDistributionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterZoneDistributionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      aclPolicy: (() { final guardedValue = map['aclPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizationMode: (() { final guardedValue = map['authorizationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      automatedBackupConfigs: (() { final guardedValue = map['automatedBackupConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterAutomatedBackupConfig>(guardedValue, (value) => GetClusterAutomatedBackupConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      availableMaintenanceVersions: (() { final guardedValue = map['availableMaintenanceVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backupCollection: (() { final guardedValue = map['backupCollection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      crossClusterReplicationConfigs: (() { final guardedValue = map['crossClusterReplicationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterCrossClusterReplicationConfig>(guardedValue, (value) => GetClusterCrossClusterReplicationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      discoveryEndpoints: (() { final guardedValue = map['discoveryEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterDiscoveryEndpoint>(guardedValue, (value) => GetClusterDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveMaintenanceVersion: (() { final guardedValue = map['effectiveMaintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcsSources: (() { final guardedValue = map['gcsSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterGcsSource>(guardedValue, (value) => GetClusterGcsSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAclPolicyInSync: (() { final guardedValue = map['isAclPolicyInSync']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMaintenancePolicy>(guardedValue, (value) => GetClusterMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterMaintenanceSchedule>(guardedValue, (value) => GetClusterMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBackupSources: (() { final guardedValue = map['managedBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterManagedBackupSource>(guardedValue, (value) => GetClusterManagedBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedServerCas: (() { final guardedValue = map['managedServerCas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterManagedServerCa>(guardedValue, (value) => GetClusterManagedServerCa.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      persistenceConfigs: (() { final guardedValue = map['persistenceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPersistenceConfig>(guardedValue, (value) => GetClusterPersistenceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      preciseSizeGb: (() { final guardedValue = map['preciseSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscConfigs: (() { final guardedValue = map['pscConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPscConfig>(guardedValue, (value) => GetClusterPscConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      pscConnections: (() { final guardedValue = map['pscConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPscConnection>(guardedValue, (value) => GetClusterPscConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      pscServiceAttachments: (() { final guardedValue = map['pscServiceAttachments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterPscServiceAttachment>(guardedValue, (value) => GetClusterPscServiceAttachment.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      redisConfigs: (() { final guardedValue = map['redisConfigs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      serverCaMode: (() { final guardedValue = map['serverCaMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCaPool: (() { final guardedValue = map['serverCaPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateInfos: (() { final guardedValue = map['stateInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterStateInfo>(guardedValue, (value) => GetClusterStateInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneDistributionConfigs: (() { final guardedValue = map['zoneDistributionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterZoneDistributionConfig>(guardedValue, (value) => GetClusterZoneDistributionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
