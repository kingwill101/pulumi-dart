// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_automated_backup_config.dart';
import 'get_instance_cross_instance_replication_config.dart';
import 'get_instance_desired_auto_created_endpoint.dart';
import 'get_instance_desired_psc_auto_connection.dart';
import 'get_instance_discovery_endpoint.dart';
import 'get_instance_endpoint.dart';
import 'get_instance_gcs_source.dart';
import 'get_instance_maintenance_policy.dart';
import 'get_instance_maintenance_schedule.dart';
import 'get_instance_managed_backup_source.dart';
import 'get_instance_managed_server_ca.dart';
import 'get_instance_node_config.dart';
import 'get_instance_persistence_config.dart';
import 'get_instance_psc_attachment_detail.dart';
import 'get_instance_psc_auto_connection.dart';
import 'get_instance_state_info.dart';
import 'get_instance_zone_distribution_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String? authorizationMode;
  final List<GetInstanceAutomatedBackupConfig>? automatedBackupConfigs;
  final List<String>? availableMaintenanceVersions;
  final String? backupCollection;
  final String? createTime;
  final List<GetInstanceCrossInstanceReplicationConfig>? crossInstanceReplicationConfigs;
  final String? deletionPolicy;
  final bool? deletionProtectionEnabled;
  final List<GetInstanceDesiredAutoCreatedEndpoint>? desiredAutoCreatedEndpoints;
  final List<GetInstanceDesiredPscAutoConnection>? desiredPscAutoConnections;
  final List<GetInstanceDiscoveryEndpoint>? discoveryEndpoints;
  final Map<String, String>? effectiveLabels;
  final String? effectiveMaintenanceVersion;
  final List<GetInstanceEndpoint>? endpoints;
  final Map<String, String>? engineConfigs;
  final String? engineVersion;
  final List<GetInstanceGcsSource>? gcsSources;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? kmsKey;
  final Map<String, String>? labels;
  final String? location;
  final List<GetInstanceMaintenancePolicy>? maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule>? maintenanceSchedules;
  final String? maintenanceVersion;
  final List<GetInstanceManagedBackupSource>? managedBackupSources;
  final List<GetInstanceManagedServerCa>? managedServerCas;
  final String? mode;
  final String? name;
  final List<GetInstanceNodeConfig>? nodeConfigs;
  final String? nodeType;
  final List<GetInstancePersistenceConfig>? persistenceConfigs;
  final String? project;
  final List<GetInstancePscAttachmentDetail>? pscAttachmentDetails;
  final List<GetInstancePscAutoConnection>? pscAutoConnections;
  final Map<String, String>? pulumiLabels;
  final int? replicaCount;
  final String? serverCaMode;
  final String? serverCaPool;
  final int? shardCount;
  final String? state;
  final List<GetInstanceStateInfo>? stateInfos;
  final String? transitEncryptionMode;
  final String? uid;
  final String? updateTime;
  final List<GetInstanceZoneDistributionConfig>? zoneDistributionConfigs;

  /// Creates a new [GetInstanceResult].
  /// [authorizationMode] Optional.
  /// [automatedBackupConfigs] Optional.
  /// [availableMaintenanceVersions] Optional.
  /// [backupCollection] Optional.
  /// [createTime] Optional.
  /// [crossInstanceReplicationConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtectionEnabled] Optional.
  /// [desiredAutoCreatedEndpoints] Optional.
  /// [desiredPscAutoConnections] Optional.
  /// [discoveryEndpoints] Optional.
  /// [effectiveLabels] Optional.
  /// [effectiveMaintenanceVersion] Optional.
  /// [endpoints] Optional.
  /// [engineConfigs] Optional.
  /// [engineVersion] Optional.
  /// [gcsSources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [kmsKey] Optional.
  /// [labels] Optional.
  /// [location] Optional.
  /// [maintenancePolicies] Optional.
  /// [maintenanceSchedules] Optional.
  /// [maintenanceVersion] Optional.
  /// [managedBackupSources] Optional.
  /// [managedServerCas] Optional.
  /// [mode] Optional.
  /// [name] Optional.
  /// [nodeConfigs] Optional.
  /// [nodeType] Optional.
  /// [persistenceConfigs] Optional.
  /// [project] Optional.
  /// [pscAttachmentDetails] Optional.
  /// [pscAutoConnections] Optional.
  /// [pulumiLabels] Optional.
  /// [replicaCount] Optional.
  /// [serverCaMode] Optional.
  /// [serverCaPool] Optional.
  /// [shardCount] Optional.
  /// [state] Optional.
  /// [stateInfos] Optional.
  /// [transitEncryptionMode] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [zoneDistributionConfigs] Optional.
  const GetInstanceResult({
    this.authorizationMode,
    this.automatedBackupConfigs,
    this.availableMaintenanceVersions,
    this.backupCollection,
    this.createTime,
    this.crossInstanceReplicationConfigs,
    this.deletionPolicy,
    this.deletionProtectionEnabled,
    this.desiredAutoCreatedEndpoints,
    this.desiredPscAutoConnections,
    this.discoveryEndpoints,
    this.effectiveLabels,
    this.effectiveMaintenanceVersion,
    this.endpoints,
    this.engineConfigs,
    this.engineVersion,
    this.gcsSources,
    this.id,
    this.instanceId,
    this.kmsKey,
    this.labels,
    this.location,
    this.maintenancePolicies,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.managedBackupSources,
    this.managedServerCas,
    this.mode,
    this.name,
    this.nodeConfigs,
    this.nodeType,
    this.persistenceConfigs,
    this.project,
    this.pscAttachmentDetails,
    this.pscAutoConnections,
    this.pulumiLabels,
    this.replicaCount,
    this.serverCaMode,
    this.serverCaPool,
    this.shardCount,
    this.state,
    this.stateInfos,
    this.transitEncryptionMode,
    this.uid,
    this.updateTime,
    this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': ?authorizationMode,
      'automatedBackupConfigs': ?(() { final guardedValue = automatedBackupConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAutomatedBackupConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'availableMaintenanceVersions': ?availableMaintenanceVersions,
      'backupCollection': ?backupCollection,
      'createTime': ?createTime,
      'crossInstanceReplicationConfigs': ?(() { final guardedValue = crossInstanceReplicationConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'desiredAutoCreatedEndpoints': ?(() { final guardedValue = desiredAutoCreatedEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'desiredPscAutoConnections': ?(() { final guardedValue = desiredPscAutoConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceDesiredPscAutoConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'discoveryEndpoints': ?(() { final guardedValue = discoveryEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceDiscoveryEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'effectiveLabels': ?effectiveLabels,
      'effectiveMaintenanceVersion': ?effectiveMaintenanceVersion,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'engineConfigs': ?engineConfigs,
      'engineVersion': ?engineVersion,
      'gcsSources': ?(() { final guardedValue = gcsSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGcsSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceId': ?instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceSchedules': ?(() { final guardedValue = maintenanceSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenanceSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceVersion': ?maintenanceVersion,
      'managedBackupSources': ?(() { final guardedValue = managedBackupSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceManagedBackupSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'managedServerCas': ?(() { final guardedValue = managedServerCas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceManagedServerCa, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mode': ?mode,
      'name': ?name,
      'nodeConfigs': ?(() { final guardedValue = nodeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNodeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeType': ?nodeType,
      'persistenceConfigs': ?(() { final guardedValue = persistenceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePersistenceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pscAttachmentDetails': ?(() { final guardedValue = pscAttachmentDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePscAttachmentDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pscAutoConnections': ?(() { final guardedValue = pscAutoConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePscAutoConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pulumiLabels': ?pulumiLabels,
      'replicaCount': ?replicaCount,
      'serverCaMode': ?serverCaMode,
      'serverCaPool': ?serverCaPool,
      'shardCount': ?shardCount,
      'state': ?state,
      'stateInfos': ?(() { final guardedValue = stateInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceStateInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'transitEncryptionMode': ?transitEncryptionMode,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'zoneDistributionConfigs': ?(() { final guardedValue = zoneDistributionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceZoneDistributionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      authorizationMode: (() { final guardedValue = map['authorizationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      automatedBackupConfigs: (() { final guardedValue = map['automatedBackupConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAutomatedBackupConfig>(guardedValue, (value) => GetInstanceAutomatedBackupConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      availableMaintenanceVersions: (() { final guardedValue = map['availableMaintenanceVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backupCollection: (() { final guardedValue = map['backupCollection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      crossInstanceReplicationConfigs: (() { final guardedValue = map['crossInstanceReplicationConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfig>(guardedValue, (value) => GetInstanceCrossInstanceReplicationConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      desiredAutoCreatedEndpoints: (() { final guardedValue = map['desiredAutoCreatedEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceDesiredAutoCreatedEndpoint>(guardedValue, (value) => GetInstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      desiredPscAutoConnections: (() { final guardedValue = map['desiredPscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceDesiredPscAutoConnection>(guardedValue, (value) => GetInstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      discoveryEndpoints: (() { final guardedValue = map['discoveryEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceDiscoveryEndpoint>(guardedValue, (value) => GetInstanceDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveMaintenanceVersion: (() { final guardedValue = map['effectiveMaintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceEndpoint>(guardedValue, (value) => GetInstanceEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      engineConfigs: (() { final guardedValue = map['engineConfigs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcsSources: (() { final guardedValue = map['gcsSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGcsSource>(guardedValue, (value) => GetInstanceGcsSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(guardedValue, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(guardedValue, (value) => GetInstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBackupSources: (() { final guardedValue = map['managedBackupSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceManagedBackupSource>(guardedValue, (value) => GetInstanceManagedBackupSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      managedServerCas: (() { final guardedValue = map['managedServerCas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceManagedServerCa>(guardedValue, (value) => GetInstanceManagedServerCa.fromMap((value as Map).cast<String, dynamic>())); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNodeConfig>(guardedValue, (value) => GetInstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      persistenceConfigs: (() { final guardedValue = map['persistenceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePersistenceConfig>(guardedValue, (value) => GetInstancePersistenceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscAttachmentDetails: (() { final guardedValue = map['pscAttachmentDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePscAttachmentDetail>(guardedValue, (value) => GetInstancePscAttachmentDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
      pscAutoConnections: (() { final guardedValue = map['pscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePscAutoConnection>(guardedValue, (value) => GetInstancePscAutoConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      serverCaMode: (() { final guardedValue = map['serverCaMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCaPool: (() { final guardedValue = map['serverCaPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateInfos: (() { final guardedValue = map['stateInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceStateInfo>(guardedValue, (value) => GetInstanceStateInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneDistributionConfigs: (() { final guardedValue = map['zoneDistributionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceZoneDistributionConfig>(guardedValue, (value) => GetInstanceZoneDistributionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
