// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy.dart';
import 'get_instance_maintenance_schedule.dart';
import 'get_instance_memcache_node.dart';
import 'get_instance_memcache_parameter.dart';
import 'get_instance_node_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String authorizedNetwork;
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final String discoveryEndpoint;
  final String displayName;
  final Map<String, String> effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final List<GetInstanceMaintenancePolicy> maintenancePolicies;
  final List<GetInstanceMaintenanceSchedule> maintenanceSchedules;
  final String memcacheFullVersion;
  final List<GetInstanceMemcacheNode> memcacheNodes;
  final List<GetInstanceMemcacheParameter> memcacheParameters;
  final String memcacheVersion;
  final String name;
  final List<GetInstanceNodeConfig> nodeConfigs;
  final int nodeCount;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final List<String> reservedIpRangeIds;
  final List<String> zones;

  /// Creates a new [GetInstanceResult].
  /// [authorizedNetwork] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [discoveryEndpoint] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [maintenancePolicies] Required.
  /// [maintenanceSchedules] Required.
  /// [memcacheFullVersion] Required.
  /// [memcacheNodes] Required.
  /// [memcacheParameters] Required.
  /// [memcacheVersion] Required.
  /// [name] Required.
  /// [nodeConfigs] Required.
  /// [nodeCount] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [reservedIpRangeIds] Required.
  /// [zones] Required.
  const GetInstanceResult({
    required this.authorizedNetwork,
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.discoveryEndpoint,
    required this.displayName,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.maintenancePolicies,
    required this.maintenanceSchedules,
    required this.memcacheFullVersion,
    required this.memcacheNodes,
    required this.memcacheParameters,
    required this.memcacheVersion,
    required this.name,
    required this.nodeConfigs,
    required this.nodeCount,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.reservedIpRangeIds,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': authorizedNetwork,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'discoveryEndpoint': discoveryEndpoint,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'id': id,
      'labels': labels,
      'maintenancePolicies': pulumi.Input.encodeList<GetInstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
      'maintenanceSchedules': pulumi.Input.encodeList<GetInstanceMaintenanceSchedule, Map<String, dynamic>>(maintenanceSchedules, (value) => value.toMap()),
      'memcacheFullVersion': memcacheFullVersion,
      'memcacheNodes': pulumi.Input.encodeList<GetInstanceMemcacheNode, Map<String, dynamic>>(memcacheNodes, (value) => value.toMap()),
      'memcacheParameters': pulumi.Input.encodeList<GetInstanceMemcacheParameter, Map<String, dynamic>>(memcacheParameters, (value) => value.toMap()),
      'memcacheVersion': memcacheVersion,
      'name': name,
      'nodeConfigs': pulumi.Input.encodeList<GetInstanceNodeConfig, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'region': ?region,
      'reservedIpRangeIds': reservedIpRangeIds,
      'zones': zones,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      authorizedNetwork: map['authorizedNetwork'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      discoveryEndpoint: map['discoveryEndpoint'] as String,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenancePolicies: pulumi.Input.decodeList<GetInstanceMaintenancePolicy>(map['maintenancePolicies']!, (value) => GetInstanceMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceSchedules: pulumi.Input.decodeList<GetInstanceMaintenanceSchedule>(map['maintenanceSchedules']!, (value) => GetInstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>())),
      memcacheFullVersion: map['memcacheFullVersion'] as String,
      memcacheNodes: pulumi.Input.decodeList<GetInstanceMemcacheNode>(map['memcacheNodes']!, (value) => GetInstanceMemcacheNode.fromMap((value as Map).cast<String, dynamic>())),
      memcacheParameters: pulumi.Input.decodeList<GetInstanceMemcacheParameter>(map['memcacheParameters']!, (value) => GetInstanceMemcacheParameter.fromMap((value as Map).cast<String, dynamic>())),
      memcacheVersion: map['memcacheVersion'] as String,
      name: map['name'] as String,
      nodeConfigs: pulumi.Input.decodeList<GetInstanceNodeConfig>(map['nodeConfigs']!, (value) => GetInstanceNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] as int,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservedIpRangeIds: (map['reservedIpRangeIds'] as List).cast<String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}
