// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_node_balancer_node_node_balancer_node_args_doc}
/// The set of arguments for NodeBalancerNode.
/// {@endtemplate}
/// {@macro pulumi_index_node_balancer_node_node_balancer_node_args_doc}
class NodeBalancerNodeArgs {
  /// The private IP Address where this backend can be reached. This must be a private IP address.
  ///
  /// - - -
  final pulumi.Input<String> address;
  /// The ID of the NodeBalancerConfig to access.
  final pulumi.Input<int> configId;
  /// The label of the Linode NodeBalancer Node. This is for display purposes only.
  final pulumi.Input<String> label;
  /// The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  final pulumi.Input<String>? mode;
  /// The ID of the NodeBalancer to access.
  final pulumi.Input<int> nodebalancerId;
  /// The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  final pulumi.Input<int>? subnetId;
  /// Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  final pulumi.Input<int>? weight;

  /// Creates a new [NodeBalancerNodeArgs].
  /// [address] The private IP Address where this backend can be reached. This must be a private IP address.
  /// [configId] The ID of the NodeBalancerConfig to access.
  /// [label] The label of the Linode NodeBalancer Node. This is for display purposes only.
  /// [mode] The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [subnetId] The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  /// [weight] Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  NodeBalancerNodeArgs({
    required pulumi.Output<String> address,
    required pulumi.Output<int> configId,
    required pulumi.Output<String> label,
    pulumi.Output<String>? mode,
    required pulumi.Output<int> nodebalancerId,
    pulumi.Output<int>? subnetId,
    pulumi.Output<int>? weight,
  }) :
      address = pulumi.Input.asInput<String>(address),
      configId = pulumi.Input.asInput<int>(configId),
      label = pulumi.Input.asInput<String>(label),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      nodebalancerId = pulumi.Input.asInput<int>(nodebalancerId),
      subnetId = pulumi.Input.asOptionalInput<int>(subnetId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'configId': configId,
      'label': label,
      'mode': ?mode,
      'nodebalancerId': nodebalancerId,
      'subnetId': ?subnetId,
      'weight': ?weight,
    };
  }

  factory NodeBalancerNodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeBalancerNodeArgs(
      address: pulumi.Output.create<String>(map['address'] as String),
      configId: pulumi.Output.create<int>(map['configId'] as int),
      label: pulumi.Output.create<String>(map['label'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      nodebalancerId: pulumi.Output.create<int>(map['nodebalancerId'] as int),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<int>(map['subnetId'] as int),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

