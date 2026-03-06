// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NodeBalancerNode resources.
class NodeBalancerNodeState {
  /// The private IP Address where this backend can be reached. This must be a private IP address.
  ///
  /// - - -
  final pulumi.Input<String>? address;
  /// The ID of the NodeBalancerConfig to access.
  final pulumi.Input<int>? configId;
  /// The label of the Linode NodeBalancer Node. This is for display purposes only.
  final pulumi.Input<String>? label;
  /// The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  final pulumi.Input<String>? mode;
  /// The ID of the NodeBalancer to access.
  final pulumi.Input<int>? nodebalancerId;
  /// The current status of this node, based on the configured checks of its NodeBalancer Config. (`unknown`, `UP`, `DOWN`).
  final pulumi.Input<String>? status;
  /// The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  final pulumi.Input<int>? subnetId;
  /// The ID of the related NodeBalancer-VPC configuration. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  final pulumi.Input<int>? vpcConfigId;
  /// Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  final pulumi.Input<int>? weight;

  /// Creates a new [NodeBalancerNodeState].
  /// [address] The private IP Address where this backend can be reached. This must be a private IP address.
  /// [configId] The ID of the NodeBalancerConfig to access.
  /// [label] The label of the Linode NodeBalancer Node. This is for display purposes only.
  /// [mode] The mode this NodeBalancer should use when sending traffic to this backend. If set to `accept` this backend is accepting traffic. If set to `reject` this backend will not receive traffic. If set to `drain` this backend will not receive new traffic, but connections already pinned to it will continue to be routed to it. (`accept`, `reject`, `drain`, `backup`)
  /// [nodebalancerId] The ID of the NodeBalancer to access.
  /// [status] The current status of this node, based on the configured checks of its NodeBalancer Config. (`unknown`, `UP`, `DOWN`).
  /// [subnetId] The ID of the related VPC subnet. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  /// [vpcConfigId] The ID of the related NodeBalancer-VPC configuration. This is only set for VPC nodes. NOTE: VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
  /// [weight] Used when picking a backend to serve a request and is not pinned to a single backend yet. Nodes with a higher weight will receive more traffic. (1-255).
  const NodeBalancerNodeState({
    this.address,
    this.configId,
    this.label,
    this.mode,
    this.nodebalancerId,
    this.status,
    this.subnetId,
    this.vpcConfigId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'configId': ?configId,
      'label': ?label,
      'mode': ?mode,
      'nodebalancerId': ?nodebalancerId,
      'status': ?status,
      'subnetId': ?subnetId,
      'vpcConfigId': ?vpcConfigId,
      'weight': ?weight,
    };
  }

  factory NodeBalancerNodeState.fromMap(Map<String, dynamic> map) {
    return NodeBalancerNodeState(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodebalancerId: (() { final guardedValue = map['nodebalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcConfigId: (() { final guardedValue = map['vpcConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

