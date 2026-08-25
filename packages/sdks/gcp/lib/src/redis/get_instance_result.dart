// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy.dart';
import 'get_instance_maintenance_schedule.dart';
import 'get_instance_node.dart';
import 'get_instance_persistence_config.dart';
import 'get_instance_server_ca_cert.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String? alternativeLocationId;
  final bool? authEnabled;
  final String? authString;
  final String? authorizedNetwork;
  final String? connectMode;
  final String? createTime;
  final String? currentLocationId;
  final String? customerManagedKey;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  final String? effectiveReservedIpRange;
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? locationId;
  final List<GetInstanceMaintenancePolicy>? maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule>? maintenanceSchedules;
  final String? maintenanceVersion;
  final int? memorySizeGb;
  final String? name;
  final List<GetInstanceNode>? nodes;
  final List<GetInstancePersistenceConfig>? persistenceConfigs;
  final String? persistenceIamIdentity;
  final int? port;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? readEndpoint;
  final int? readEndpointPort;
  final String? readReplicasMode;
  final Map<String, String>? redisConfigs;
  final String? redisVersion;
  final String? region;
  final int? replicaCount;
  final String? reservedIpRange;
  final String? secondaryIpRange;
  final List<GetInstanceServerCaCert>? serverCaCerts;
  final String? tier;
  final String? transitEncryptionMode;

  /// Creates a new [GetInstanceResult].
  /// [alternativeLocationId] Optional.
  /// [authEnabled] Optional.
  /// [authString] Optional.
  /// [authorizedNetwork] Optional.
  /// [connectMode] Optional.
  /// [createTime] Optional.
  /// [currentLocationId] Optional.
  /// [customerManagedKey] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [effectiveReservedIpRange] Optional.
  /// [host] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [locationId] Optional.
  /// [maintenancePolicies] Optional.
  /// [maintenanceSchedules] Optional.
  /// [maintenanceVersion] Optional.
  /// [memorySizeGb] Optional.
  /// [name] Optional.
  /// [nodes] Optional.
  /// [persistenceConfigs] Optional.
  /// [persistenceIamIdentity] Optional.
  /// [port] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [readEndpoint] Optional.
  /// [readEndpointPort] Optional.
  /// [readReplicasMode] Optional.
  /// [redisConfigs] Optional.
  /// [redisVersion] Optional.
  /// [region] Optional.
  /// [replicaCount] Optional.
  /// [reservedIpRange] Optional.
  /// [secondaryIpRange] Optional.
  /// [serverCaCerts] Optional.
  /// [tier] Optional.
  /// [transitEncryptionMode] Optional.
  const GetInstanceResult({
    this.alternativeLocationId,
    this.authEnabled,
    this.authString,
    this.authorizedNetwork,
    this.connectMode,
    this.createTime,
    this.currentLocationId,
    this.customerManagedKey,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.effectiveLabels,
    this.effectiveReservedIpRange,
    this.host,
    this.id,
    this.labels,
    this.locationId,
    this.maintenancePolicies,
    this.maintenanceSchedules,
    this.maintenanceVersion,
    this.memorySizeGb,
    this.name,
    this.nodes,
    this.persistenceConfigs,
    this.persistenceIamIdentity,
    this.port,
    this.project,
    this.pulumiLabels,
    this.readEndpoint,
    this.readEndpointPort,
    this.readReplicasMode,
    this.redisConfigs,
    this.redisVersion,
    this.region,
    this.replicaCount,
    this.reservedIpRange,
    this.secondaryIpRange,
    this.serverCaCerts,
    this.tier,
    this.transitEncryptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternativeLocationId': ?alternativeLocationId,
      'authEnabled': ?authEnabled,
      'authString': ?authString,
      'authorizedNetwork': ?authorizedNetwork,
      'connectMode': ?connectMode,
      'createTime': ?createTime,
      'currentLocationId': ?currentLocationId,
      'customerManagedKey': ?customerManagedKey,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'effectiveReservedIpRange': ?effectiveReservedIpRange,
      'host': ?host,
      'id': ?id,
      'labels': ?labels,
      'locationId': ?locationId,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceSchedules': ?(() { final guardedValue = maintenanceSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenanceSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceVersion': ?maintenanceVersion,
      'memorySizeGb': ?memorySizeGb,
      'name': ?name,
      'nodes': ?(() { final guardedValue = nodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'persistenceConfigs': ?(() { final guardedValue = persistenceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancePersistenceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'persistenceIamIdentity': ?persistenceIamIdentity,
      'port': ?port,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'readEndpoint': ?readEndpoint,
      'readEndpointPort': ?readEndpointPort,
      'readReplicasMode': ?readReplicasMode,
      'redisConfigs': ?redisConfigs,
      'redisVersion': ?redisVersion,
      'region': ?region,
      'replicaCount': ?replicaCount,
      'reservedIpRange': ?reservedIpRange,
      'secondaryIpRange': ?secondaryIpRange,
      'serverCaCerts': ?(() { final guardedValue = serverCaCerts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceServerCaCert, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tier': ?tier,
      'transitEncryptionMode': ?transitEncryptionMode,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      alternativeLocationId: (() { final guardedValue = map['alternativeLocationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authEnabled: (() { final guardedValue = map['authEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authString: (() { final guardedValue = map['authString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectMode: (() { final guardedValue = map['connectMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentLocationId: (() { final guardedValue = map['currentLocationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      effectiveReservedIpRange: (() { final guardedValue = map['effectiveReservedIpRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      locationId: (() { final guardedValue = map['locationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(guardedValue, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(guardedValue, (value) => GetInstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceVersion: (() { final guardedValue = map['maintenanceVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySizeGb: (() { final guardedValue = map['memorySizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNode>(guardedValue, (value) => GetInstanceNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      persistenceConfigs: (() { final guardedValue = map['persistenceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancePersistenceConfig>(guardedValue, (value) => GetInstancePersistenceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      persistenceIamIdentity: (() { final guardedValue = map['persistenceIamIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      readEndpoint: (() { final guardedValue = map['readEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readEndpointPort: (() { final guardedValue = map['readEndpointPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      readReplicasMode: (() { final guardedValue = map['readReplicasMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redisConfigs: (() { final guardedValue = map['redisConfigs']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      redisVersion: (() { final guardedValue = map['redisVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryIpRange: (() { final guardedValue = map['secondaryIpRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCaCerts: (() { final guardedValue = map['serverCaCerts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceServerCaCert>(guardedValue, (value) => GetInstanceServerCaCert.fromMap((value as Map).cast<String, dynamic>())); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
