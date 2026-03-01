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
    pulumi.Output<String>? authorizedNetwork,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<InstanceMaintenancePolicy>? maintenancePolicy,
    pulumi.Output<InstanceMemcacheParameters>? memcacheParameters,
    pulumi.Output<String>? memcacheVersion,
    pulumi.Output<String>? name,
    required pulumi.Output<InstanceNodeConfig> nodeConfig,
    required pulumi.Output<int> nodeCount,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? reservedIpRangeIds,
    pulumi.Output<List<String>>? zones,
  }) :
      authorizedNetwork = pulumi.Input.asOptionalInput<String>(authorizedNetwork),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maintenancePolicy = pulumi.Input.asOptionalInput<InstanceMaintenancePolicy>(maintenancePolicy),
      memcacheParameters = pulumi.Input.asOptionalInput<InstanceMemcacheParameters>(memcacheParameters),
      memcacheVersion = pulumi.Input.asOptionalInput<String>(memcacheVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asInput<InstanceNodeConfig>(nodeConfig),
      nodeCount = pulumi.Input.asInput<int>(nodeCount),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedIpRangeIds = pulumi.Input.asOptionalInput<List<String>>(reservedIpRangeIds),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      authorizedNetwork: map['authorizedNetwork'] == null ? null : pulumi.Output.create<String>(map['authorizedNetwork'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maintenancePolicy: map['maintenancePolicy'] == null ? null : pulumi.Output.create<InstanceMaintenancePolicy>(InstanceMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>())),
      memcacheParameters: map['memcacheParameters'] == null ? null : pulumi.Output.create<InstanceMemcacheParameters>(InstanceMemcacheParameters.fromMap((map['memcacheParameters'] as Map).cast<String, dynamic>())),
      memcacheVersion: map['memcacheVersion'] == null ? null : pulumi.Output.create<String>(map['memcacheVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfig: pulumi.Output.create<InstanceNodeConfig>(InstanceNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      nodeCount: pulumi.Output.create<int>(map['nodeCount'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedIpRangeIds: map['reservedIpRangeIds'] == null ? null : pulumi.Output.create<List<String>>((map['reservedIpRangeIds'] as List).cast<String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

