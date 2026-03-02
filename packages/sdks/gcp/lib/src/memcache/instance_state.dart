// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy.dart';
import 'instance_maintenance_schedule.dart';
import 'instance_memcache_node.dart';
import 'instance_memcache_parameters.dart';
import 'instance_node_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The full name of the GCE network to connect the instance to.  If not provided,
  /// 'default' will be used.
  final pulumi.Input<String>? authorizedNetwork;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// Endpoint for Discovery API
  final pulumi.Input<String>? discoveryEndpoint;
  /// A user-visible name for the instance.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
  /// Output only. Published maintenance schedule.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMaintenanceSchedule>>? maintenanceSchedules;
  /// The full version of memcached server running on this instance.
  final pulumi.Input<String>? memcacheFullVersion;
  /// Additional information about the instance state, if available.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceMemcacheNode>>? memcacheNodes;
  /// User-specified parameters for this memcache instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMemcacheParameters>? memcacheParameters;
  /// The major version of Memcached software. If not provided, latest supported version will be used.
  /// Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
  /// determined by our system based on the latest supported minor version.
  /// Default value is `MEMCACHE_1_5`.
  /// Possible values are: `MEMCACHE_1_5`, `MEMCACHE_1_6_15`.
  final pulumi.Input<String>? memcacheVersion;
  /// The resource name of the instance.
  final pulumi.Input<String>? name;
  /// Configuration for memcache nodes.
  /// Structure is documented below.
  final pulumi.Input<InstanceNodeConfig>? nodeConfig;
  /// Number of nodes in the memcache instance.
  final pulumi.Input<int>? nodeCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the Memcache instance. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// Contains the name of allocated IP address ranges associated with
  /// the private service access connection for example, "test-default"
  /// associated with IP range 10.0.0.0/29.
  final pulumi.Input<List<String>>? reservedIpRangeIds;
  /// Zones where memcache nodes should be provisioned.  If not
  /// provided, all zones will be used.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InstanceState].
  /// [authorizedNetwork] The full name of the GCE network to connect the instance to.  If not provided,
  /// [createTime] Creation timestamp in RFC3339 text format.
  /// [deletionProtection] Optional.
  /// [discoveryEndpoint] Endpoint for Discovery API
  /// [displayName] A user-visible name for the instance.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [maintenancePolicy] Maintenance policy for an instance.
  /// [maintenanceSchedules] Output only. Published maintenance schedule.
  /// [memcacheFullVersion] The full version of memcached server running on this instance.
  /// [memcacheNodes] Additional information about the instance state, if available.
  /// [memcacheParameters] User-specified parameters for this memcache instance.
  /// [memcacheVersion] The major version of Memcached software. If not provided, latest supported version will be used.
  /// [name] The resource name of the instance.
  /// [nodeConfig] Configuration for memcache nodes.
  /// [nodeCount] Number of nodes in the memcache instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the Memcache instance. If it is not provided, the provider region is used.
  /// [reservedIpRangeIds] Contains the name of allocated IP address ranges associated with
  /// [zones] Zones where memcache nodes should be provisioned.  If not
  InstanceState({
    this.authorizedNetwork,
    this.createTime,
    this.deletionProtection,
    this.discoveryEndpoint,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceSchedules,
    this.memcacheFullVersion,
    this.memcacheNodes,
    this.memcacheParameters,
    this.memcacheVersion,
    this.name,
    this.nodeConfig,
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
      'deletionProtection': ?deletionProtection,
      'discoveryEndpoint': ?discoveryEndpoint,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'maintenanceSchedules': ?pulumi.Input.mapOptionalInputValue<List<InstanceMaintenanceSchedule>, List<Map<String, dynamic>>>(maintenanceSchedules, (value) => pulumi.Input.encodeList<InstanceMaintenanceSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memcacheFullVersion': ?memcacheFullVersion,
      'memcacheNodes': ?pulumi.Input.mapOptionalInputValue<List<InstanceMemcacheNode>, List<Map<String, dynamic>>>(memcacheNodes, (value) => pulumi.Input.encodeList<InstanceMemcacheNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memcacheParameters': ?pulumi.Input.mapOptionalInputValue<InstanceMemcacheParameters, Map<String, dynamic>>(memcacheParameters, (value) => value.toMap()),
      'memcacheVersion': ?memcacheVersion,
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<InstanceNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'reservedIpRangeIds': ?reservedIpRangeIds,
      'zones': ?zones,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      authorizedNetwork: map['authorizedNetwork'] == null ? null : (map['authorizedNetwork'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      discoveryEndpoint: map['discoveryEndpoint'] == null ? null : (map['discoveryEndpoint'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())).input(),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : (pulumi.Input.decodeList<InstanceMaintenanceSchedule>(map['maintenanceSchedules'], (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memcacheFullVersion: map['memcacheFullVersion'] == null ? null : (map['memcacheFullVersion'] as String).input(),
      memcacheNodes: map['memcacheNodes'] == null ? null : (pulumi.Input.decodeList<InstanceMemcacheNode>(map['memcacheNodes'], (value) => InstanceMemcacheNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memcacheParameters: map['memcacheParameters'] == null ? null : (InstanceMemcacheParameters.fromMap((map['memcacheParameters'] as Map).cast<String, dynamic>())).input(),
      memcacheVersion: map['memcacheVersion'] == null ? null : (map['memcacheVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (InstanceNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      reservedIpRangeIds: map['reservedIpRangeIds'] == null ? null : ((map['reservedIpRangeIds'] as List).cast<String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

