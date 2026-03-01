// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinfra_get_node_group_get_node_group_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinfra_get_node_group_get_node_group_args_doc}
class GetNodeGroupArgs {
  /// The name of the OpenStack Magnum cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the node group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V1 Container Infra
  /// client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetNodeGroupArgs].
  /// [clusterId] The name of the OpenStack Magnum cluster.
  /// [name] The name of the node group.
  /// [region] The region in which to obtain the V1 Container Infra
  GetNodeGroupArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

