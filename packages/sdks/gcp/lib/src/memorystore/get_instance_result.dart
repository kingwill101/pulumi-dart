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
  final String authorizationMode;
  final List<GetInstanceAutomatedBackupConfig> automatedBackupConfigs;
  final List<String> availableMaintenanceVersions;
  final String backupCollection;
  final String createTime;
  final List<GetInstanceCrossInstanceReplicationConfig> crossInstanceReplicationConfigs;
  final String deletionPolicy;
  final bool deletionProtectionEnabled;
  final List<GetInstanceDesiredAutoCreatedEndpoint> desiredAutoCreatedEndpoints;
  final List<GetInstanceDesiredPscAutoConnection> desiredPscAutoConnections;
  final List<GetInstanceDiscoveryEndpoint> discoveryEndpoints;
  final Map<String, String> effectiveLabels;
  final String effectiveMaintenanceVersion;
  final List<GetInstanceEndpoint> endpoints;
  final Map<String, String> engineConfigs;
  final String engineVersion;
  final List<GetInstanceGcsSource> gcsSources;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String kmsKey;
  final Map<String, String> labels;
  final String? location;
  final List<GetInstanceMaintenancePolicy> maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule> maintenanceSchedules;
  final String maintenanceVersion;
  final List<GetInstanceManagedBackupSource> managedBackupSources;
  final List<GetInstanceManagedServerCa> managedServerCas;
  final String mode;
  final String name;
  final List<GetInstanceNodeConfig> nodeConfigs;
  final String nodeType;
  final List<GetInstancePersistenceConfig> persistenceConfigs;
  final String? project;
  final List<GetInstancePscAttachmentDetail> pscAttachmentDetails;
  final List<GetInstancePscAutoConnection> pscAutoConnections;
  final Map<String, String> pulumiLabels;
  final int replicaCount;
  final String serverCaMode;
  final String serverCaPool;
  final int shardCount;
  final String state;
  final List<GetInstanceStateInfo> stateInfos;
  final String transitEncryptionMode;
  final String uid;
  final String updateTime;
  final List<GetInstanceZoneDistributionConfig> zoneDistributionConfigs;

  /// Creates a new [GetInstanceResult].
  /// [authorizationMode] Required.
  /// [automatedBackupConfigs] Required.
  /// [availableMaintenanceVersions] Required.
  /// [backupCollection] Required.
  /// [createTime] Required.
  /// [crossInstanceReplicationConfigs] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtectionEnabled] Required.
  /// [desiredAutoCreatedEndpoints] Required.
  /// [desiredPscAutoConnections] Required.
  /// [discoveryEndpoints] Required.
  /// [effectiveLabels] Required.
  /// [effectiveMaintenanceVersion] Required.
  /// [endpoints] Required.
  /// [engineConfigs] Required.
  /// [engineVersion] Required.
  /// [gcsSources] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [kmsKey] Required.
  /// [labels] Required.
  /// [location] Optional.
  /// [maintenancePolicies] Required.
  /// [maintenanceSchedules] Required.
  /// [maintenanceVersion] Required.
  /// [managedBackupSources] Required.
  /// [managedServerCas] Required.
  /// [mode] Required.
  /// [name] Required.
  /// [nodeConfigs] Required.
  /// [nodeType] Required.
  /// [persistenceConfigs] Required.
  /// [project] Optional.
  /// [pscAttachmentDetails] Required.
  /// [pscAutoConnections] Required.
  /// [pulumiLabels] Required.
  /// [replicaCount] Required.
  /// [serverCaMode] Required.
  /// [serverCaPool] Required.
  /// [shardCount] Required.
  /// [state] Required.
  /// [stateInfos] Required.
  /// [transitEncryptionMode] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [zoneDistributionConfigs] Required.
  const GetInstanceResult({
    required this.authorizationMode,
    required this.automatedBackupConfigs,
    required this.availableMaintenanceVersions,
    required this.backupCollection,
    required this.createTime,
    required this.crossInstanceReplicationConfigs,
    required this.deletionPolicy,
    required this.deletionProtectionEnabled,
    required this.desiredAutoCreatedEndpoints,
    required this.desiredPscAutoConnections,
    required this.discoveryEndpoints,
    required this.effectiveLabels,
    required this.effectiveMaintenanceVersion,
    required this.endpoints,
    required this.engineConfigs,
    required this.engineVersion,
    required this.gcsSources,
    required this.id,
    required this.instanceId,
    required this.kmsKey,
    required this.labels,
    this.location,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.maintenanceVersion,
    required this.managedBackupSources,
    required this.managedServerCas,
    required this.mode,
    required this.name,
    required this.nodeConfigs,
    required this.nodeType,
    required this.persistenceConfigs,
    this.project,
    required this.pscAttachmentDetails,
    required this.pscAutoConnections,
    required this.pulumiLabels,
    required this.replicaCount,
    required this.serverCaMode,
    required this.serverCaPool,
    required this.shardCount,
    required this.state,
    required this.stateInfos,
    required this.transitEncryptionMode,
    required this.uid,
    required this.updateTime,
    required this.zoneDistributionConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationMode': authorizationMode,
      'automatedBackupConfigs': pulumi.Input.encodeList<GetInstanceAutomatedBackupConfig, Map<String, dynamic>>(automatedBackupConfigs, (value) => value.toMap()),
      'availableMaintenanceVersions': availableMaintenanceVersions,
      'backupCollection': backupCollection,
      'createTime': createTime,
      'crossInstanceReplicationConfigs': pulumi.Input.encodeList<GetInstanceCrossInstanceReplicationConfig, Map<String, dynamic>>(crossInstanceReplicationConfigs, (value) => value.toMap()),
      'deletionPolicy': deletionPolicy,
      'deletionProtectionEnabled': deletionProtectionEnabled,
      'desiredAutoCreatedEndpoints': pulumi.Input.encodeList<GetInstanceDesiredAutoCreatedEndpoint, Map<String, dynamic>>(desiredAutoCreatedEndpoints, (value) => value.toMap()),
      'desiredPscAutoConnections': pulumi.Input.encodeList<GetInstanceDesiredPscAutoConnection, Map<String, dynamic>>(desiredPscAutoConnections, (value) => value.toMap()),
      'discoveryEndpoints': pulumi.Input.encodeList<GetInstanceDiscoveryEndpoint, Map<String, dynamic>>(discoveryEndpoints, (value) => value.toMap()),
      'effectiveLabels': effectiveLabels,
      'effectiveMaintenanceVersion': effectiveMaintenanceVersion,
      'endpoints': pulumi.Input.encodeList<GetInstanceEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'engineConfigs': engineConfigs,
      'engineVersion': engineVersion,
      'gcsSources': pulumi.Input.encodeList<GetInstanceGcsSource, Map<String, dynamic>>(gcsSources, (value) => value.toMap()),
      'id': id,
      'instanceId': instanceId,
      'kmsKey': kmsKey,
      'labels': labels,
      'location': ?location,
      'maintenancePolicies': pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'maintenanceSchedules': pulumi.Input.encodeList<GetInstanceMaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap()),
      'maintenanceVersion': maintenanceVersion,
      'managedBackupSources': pulumi.Input.encodeList<GetInstanceManagedBackupSource, Map<String, dynamic>>(managedBackupSources, (value) => value.toMap()),
      'managedServerCas': pulumi.Input.encodeList<GetInstanceManagedServerCa, Map<String, dynamic>>(managedServerCas, (value) => value.toMap()),
      'mode': mode,
      'name': name,
      'nodeConfigs': pulumi.Input.encodeList<GetInstanceNodeConfig, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'nodeType': nodeType,
      'persistenceConfigs': pulumi.Input.encodeList<GetInstancePersistenceConfig, Map<String, dynamic>>(persistenceConfigs, (value) => value.toMap()),
      'project': ?project,
      'pscAttachmentDetails': pulumi.Input.encodeList<GetInstancePscAttachmentDetail, Map<String, dynamic>>(pscAttachmentDetails, (value) => value.toMap()),
      'pscAutoConnections': pulumi.Input.encodeList<GetInstancePscAutoConnection, Map<String, dynamic>>(pscAutoConnections, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
      'replicaCount': replicaCount,
      'serverCaMode': serverCaMode,
      'serverCaPool': serverCaPool,
      'shardCount': shardCount,
      'state': state,
      'stateInfos': pulumi.Input.encodeList<GetInstanceStateInfo, Map<String, dynamic>>(stateInfos, (value) => value.toMap()),
      'transitEncryptionMode': transitEncryptionMode,
      'uid': uid,
      'updateTime': updateTime,
      'zoneDistributionConfigs': pulumi.Input.encodeList<GetInstanceZoneDistributionConfig, Map<String, dynamic>>(zoneDistributionConfigs, (value) => value.toMap()),
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      authorizationMode: map['authorizationMode'] as String,
      automatedBackupConfigs: pulumi.Input.decodeList<GetInstanceAutomatedBackupConfig>(map['automatedBackupConfigs']!, (value) => GetInstanceAutomatedBackupConfig.fromMap((value as Map).cast<String, dynamic>())),
      availableMaintenanceVersions: (map['availableMaintenanceVersions'] as List).cast<String>(),
      backupCollection: map['backupCollection'] as String,
      createTime: map['createTime'] as String,
      crossInstanceReplicationConfigs: pulumi.Input.decodeList<GetInstanceCrossInstanceReplicationConfig>(map['crossInstanceReplicationConfigs']!, (value) => GetInstanceCrossInstanceReplicationConfig.fromMap((value as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      desiredAutoCreatedEndpoints: pulumi.Input.decodeList<GetInstanceDesiredAutoCreatedEndpoint>(map['desiredAutoCreatedEndpoints']!, (value) => GetInstanceDesiredAutoCreatedEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      desiredPscAutoConnections: pulumi.Input.decodeList<GetInstanceDesiredPscAutoConnection>(map['desiredPscAutoConnections']!, (value) => GetInstanceDesiredPscAutoConnection.fromMap((value as Map).cast<String, dynamic>())),
      discoveryEndpoints: pulumi.Input.decodeList<GetInstanceDiscoveryEndpoint>(map['discoveryEndpoints']!, (value) => GetInstanceDiscoveryEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      effectiveMaintenanceVersion: map['effectiveMaintenanceVersion'] as String,
      endpoints: pulumi.Input.decodeList<GetInstanceEndpoint>(map['endpoints']!, (value) => GetInstanceEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      engineConfigs: (map['engineConfigs'] as Map).cast<String, String>(),
      engineVersion: map['engineVersion'] as String,
      gcsSources: pulumi.Input.decodeList<GetInstanceGcsSource>(map['gcsSources']!, (value) => GetInstanceGcsSource.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicies: pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(map['maintenancePolicies']!, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceSchedules: pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(map['maintenanceSchedules']!, (value) => GetInstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceVersion: map['maintenanceVersion'] as String,
      managedBackupSources: pulumi.Input.decodeList<GetInstanceManagedBackupSource>(map['managedBackupSources']!, (value) => GetInstanceManagedBackupSource.fromMap((value as Map).cast<String, dynamic>())),
      managedServerCas: pulumi.Input.decodeList<GetInstanceManagedServerCa>(map['managedServerCas']!, (value) => GetInstanceManagedServerCa.fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      name: map['name'] as String,
      nodeConfigs: pulumi.Input.decodeList<GetInstanceNodeConfig>(map['nodeConfigs']!, (value) => GetInstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeType: map['nodeType'] as String,
      persistenceConfigs: pulumi.Input.decodeList<GetInstancePersistenceConfig>(map['persistenceConfigs']!, (value) => GetInstancePersistenceConfig.fromMap((value as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pscAttachmentDetails: pulumi.Input.decodeList<GetInstancePscAttachmentDetail>(map['pscAttachmentDetails']!, (value) => GetInstancePscAttachmentDetail.fromMap((value as Map).cast<String, dynamic>())),
      pscAutoConnections: pulumi.Input.decodeList<GetInstancePscAutoConnection>(map['pscAutoConnections']!, (value) => GetInstancePscAutoConnection.fromMap((value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      replicaCount: map['replicaCount'] as int,
      serverCaMode: map['serverCaMode'] as String,
      serverCaPool: map['serverCaPool'] as String,
      shardCount: map['shardCount'] as int,
      state: map['state'] as String,
      stateInfos: pulumi.Input.decodeList<GetInstanceStateInfo>(map['stateInfos']!, (value) => GetInstanceStateInfo.fromMap((value as Map).cast<String, dynamic>())),
      transitEncryptionMode: map['transitEncryptionMode'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      zoneDistributionConfigs: pulumi.Input.decodeList<GetInstanceZoneDistributionConfig>(map['zoneDistributionConfigs']!, (value) => GetInstanceZoneDistributionConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
