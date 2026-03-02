// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy.dart';
import 'instance_memcache_parameters.dart';
import 'instance_node_config.dart';

/// {@template pulumi_memcache_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_memcache_instance_instance_args_doc}
class InstanceArgs {
  /// The full name of the GCE network to connect the instance to.  If not provided,
  /// 'default' will be used.
  final pulumi.Input<String>? authorizedNetwork;
  final pulumi.Input<bool>? deletionProtection;
  /// A user-visible name for the instance.
  final pulumi.Input<String>? displayName;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicy>? maintenancePolicy;
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
  final pulumi.Input<InstanceNodeConfig> nodeConfig;
  /// Number of nodes in the memcache instance.
  final pulumi.Input<int> nodeCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Memcache instance. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// Contains the name of allocated IP address ranges associated with
  /// the private service access connection for example, "test-default"
  /// associated with IP range 10.0.0.0/29.
  final pulumi.Input<List<String>>? reservedIpRangeIds;
  /// Zones where memcache nodes should be provisioned.  If not
  /// provided, all zones will be used.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [InstanceArgs].
  /// [authorizedNetwork] The full name of the GCE network to connect the instance to.  If not provided,
  /// [deletionProtection] Optional.
  /// [displayName] A user-visible name for the instance.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [maintenancePolicy] Maintenance policy for an instance.
  /// [memcacheParameters] User-specified parameters for this memcache instance.
  /// [memcacheVersion] The major version of Memcached software. If not provided, latest supported version will be used.
  /// [name] The resource name of the instance.
  /// [nodeConfig] Configuration for memcache nodes.
  /// [nodeCount] Number of nodes in the memcache instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Memcache instance. If it is not provided, the provider region is used.
  /// [reservedIpRangeIds] Contains the name of allocated IP address ranges associated with
  /// [zones] Zones where memcache nodes should be provisioned.  If not
  InstanceArgs({
    this.authorizedNetwork,
    this.deletionProtection,
    this.displayName,
    this.labels,
    this.maintenancePolicy,
    this.memcacheParameters,
    this.memcacheVersion,
    this.name,
    required this.nodeConfig,
    required this.nodeCount,
    this.project,
    this.region,
    this.reservedIpRangeIds,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedNetwork': ?authorizedNetwork,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'labels': ?labels,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'memcacheParameters': ?pulumi.Input.mapOptionalInputValue<InstanceMemcacheParameters, Map<String, dynamic>>(memcacheParameters, (value) => value.toMap()),
      'memcacheVersion': ?memcacheVersion,
      'name': ?name,
      'nodeConfig': pulumi.Input.mapInputValue<InstanceNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'project': ?project,
      'region': ?region,
      'reservedIpRangeIds': ?reservedIpRangeIds,
      'zones': ?zones,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      authorizedNetwork: map['authorizedNetwork'] == null ? null : (map['authorizedNetwork']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : (InstanceMaintenancePolicy.fromMap((map['maintenancePolicy']! as Map).cast<String, dynamic>())).input(),
      memcacheParameters: map['memcacheParameters'] == null ? null : (InstanceMemcacheParameters.fromMap((map['memcacheParameters']! as Map).cast<String, dynamic>())).input(),
      memcacheVersion: map['memcacheVersion'] == null ? null : (map['memcacheVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeConfig: (InstanceNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      reservedIpRangeIds: map['reservedIpRangeIds'] == null ? null : ((map['reservedIpRangeIds']! as List).cast<String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

