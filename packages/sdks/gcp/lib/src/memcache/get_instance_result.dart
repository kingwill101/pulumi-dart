// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy.dart';
import 'get_instance_maintenance_schedule.dart';
import 'get_instance_memcache_node.dart';
import 'get_instance_memcache_parameter.dart';
import 'get_instance_node_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String? authorizedNetwork;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final String? discoveryEndpoint;
  final String? displayName;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final List<GetInstanceMaintenancePolicy>? maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule>? maintenanceSchedules;
  final String? memcacheFullVersion;
  final List<GetInstanceMemcacheNode>? memcacheNodes;
  final List<GetInstanceMemcacheParameter>? memcacheParameters;
  final String? memcacheVersion;
  final String? name;
  final List<GetInstanceNodeConfig>? nodeConfigs;
  final int? nodeCount;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? region;
  final List<String>? reservedIpRangeIds;
  final List<String>? zones;

  /// Creates a new [GetInstanceResult].
  /// [authorizedNetwork] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [discoveryEndpoint] Optional.
  /// [displayName] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [maintenancePolicies] Optional.
  /// [maintenanceSchedules] Optional.
  /// [memcacheFullVersion] Optional.
  /// [memcacheNodes] Optional.
  /// [memcacheParameters] Optional.
  /// [memcacheVersion] Optional.
  /// [name] Optional.
  /// [nodeConfigs] Optional.
  /// [nodeCount] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [region] Optional.
  /// [reservedIpRangeIds] Optional.
  /// [zones] Optional.
  const GetInstanceResult({
    this.authorizedNetwork,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.discoveryEndpoint,
    this.displayName,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.maintenancePolicies,
    this.maintenanceSchedules,
    this.memcacheFullVersion,
    this.memcacheNodes,
    this.memcacheParameters,
    this.memcacheVersion,
    this.name,
    this.nodeConfigs,
    this.nodeCount,
    this.project,
    this.pulumiLabels,
    this.region,
    this.reservedIpRangeIds,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'discoveryEndpoint': ?discoveryEndpoint,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'maintenancePolicies': ?(() { final guardedValue = maintenancePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceSchedules': ?(() { final guardedValue = maintenanceSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMaintenanceSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memcacheFullVersion': ?memcacheFullVersion,
      'memcacheNodes': ?(() { final guardedValue = memcacheNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMemcacheNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memcacheParameters': ?(() { final guardedValue = memcacheParameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMemcacheParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memcacheVersion': ?memcacheVersion,
      'name': ?name,
      'nodeConfigs': ?(() { final guardedValue = nodeConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceNodeConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeCount': ?nodeCount,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'reservedIpRangeIds': ?reservedIpRangeIds,
      'zones': ?zones,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      authorizedNetwork: (() { final guardedValue = map['authorizedNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      discoveryEndpoint: (() { final guardedValue = map['discoveryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maintenancePolicies: (() { final guardedValue = map['maintenancePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(guardedValue, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceSchedules: (() { final guardedValue = map['maintenanceSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(guardedValue, (value) => GetInstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      memcacheFullVersion: (() { final guardedValue = map['memcacheFullVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memcacheNodes: (() { final guardedValue = map['memcacheNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMemcacheNode>(guardedValue, (value) => GetInstanceMemcacheNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      memcacheParameters: (() { final guardedValue = map['memcacheParameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMemcacheParameter>(guardedValue, (value) => GetInstanceMemcacheParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      memcacheVersion: (() { final guardedValue = map['memcacheVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeConfigs: (() { final guardedValue = map['nodeConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceNodeConfig>(guardedValue, (value) => GetInstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservedIpRangeIds: (() { final guardedValue = map['reservedIpRangeIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
