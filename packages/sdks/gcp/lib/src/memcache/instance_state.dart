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
    pulumi.Output<String>? authorizedNetwork,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? discoveryEndpoint,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<InstanceMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<List<InstanceMaintenanceSchedule>>? maintenanceSchedules,
    pulumi.Output<String>? memcacheFullVersion,
    pulumi.Output<List<InstanceMemcacheNode>>? memcacheNodes,
    pulumi.Output<InstanceMemcacheParameters>? memcacheParameters,
    pulumi.Output<String>? memcacheVersion,
    pulumi.Output<String>? name,
    pulumi.Output<InstanceNodeConfig>? nodeConfig,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? reservedIpRangeIds,
    pulumi.Output<List<String>>? zones,
  }) :
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      discoveryEndpoint = pulumi.Input.asOptionalInput<String>(discoveryEndpoint),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maintenancePolicy = pulumi.Input.asOptionalInput<InstanceMaintenancePolicy>(maintenancePolicy),
      maintenanceSchedules = pulumi.Input.asOptionalInput<List<InstanceMaintenanceSchedule>>(maintenanceSchedules),
      memcacheFullVersion = pulumi.Input.asOptionalInput<String>(memcacheFullVersion),
      memcacheNodes = pulumi.Input.asOptionalInput<List<InstanceMemcacheNode>>(memcacheNodes),
      memcacheParameters = pulumi.Input.asOptionalInput<InstanceMemcacheParameters>(memcacheParameters),
      memcacheVersion = pulumi.Input.asOptionalInput<String>(memcacheVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asOptionalInput<InstanceNodeConfig>(nodeConfig),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedIpRangeIds = pulumi.Input.asOptionalInput<List<String>>(reservedIpRangeIds),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      authorizedNetwork: map['authorizedNetwork'] == null ? null : pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      discoveryEndpoint: map['discoveryEndpoint'] == null ? null : pulumi.Output.create<String>(map['discoveryEndpoint'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<InstanceMaintenancePolicy>(InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      maintenanceSchedules: map['maintenanceSchedules'] == null ? null : pulumi.Output.create<List<InstanceMaintenanceSchedule>>(pulumi.Input.decodeList<InstanceMaintenanceSchedule>(map['maintenanceSchedules'], (value) => InstanceMaintenanceSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      memcacheFullVersion: map['memcacheFullVersion'] == null ? null : pulumi.Output.create<String>(map['memcacheFullVersion'] as String),
      memcacheNodes: map['memcacheNodes'] == null ? null : pulumi.Output.create<List<InstanceMemcacheNode>>(pulumi.Input.decodeList<InstanceMemcacheNode>(map['memcacheNodes'], (value) => InstanceMemcacheNode.fromMap((value as Map).cast<String, dynamic>()))),
      memcacheParameters: map['memcacheParameters'] == null ? null : pulumi.Output.create<InstanceMemcacheParameters>(InstanceMemcacheParameters.fromMap((map['memcacheParameters'] as Map).cast<String, dynamic>())),
      memcacheVersion: map['memcacheVersion'] == null ? null : pulumi.Output.create<String>(map['memcacheVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<InstanceNodeConfig>(InstanceNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedIpRangeIds: map['reservedIpRangeIds'] == null ? null : pulumi.Output.create<List<String>>((map['reservedIpRangeIds'] as List).cast<String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

