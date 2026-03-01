// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerNetwork resources.
class LoadBalancerNetworkState {
  /// Wether the Load Balancer public interface is enabled. Default is `true`.
  final pulumi.Input<bool>? enablePublicInterface;
  /// IP to assign to the Load Balancer.
  final pulumi.Input<String>? ip;
  /// ID of the Load Balancer.
  final pulumi.Input<int>? loadBalancerId;
  /// ID of the Network to attach the Load Balancer to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Load Balancer will be attached to the last subnet (ordered by `ip_range`).
  final pulumi.Input<int>? networkId;
  /// ID of the Subnet to attach the Load Balancer to. Required if `network_id` is not set.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [LoadBalancerNetworkState].
  /// [enablePublicInterface] Wether the Load Balancer public interface is enabled. Default is `true`.
  /// [ip] IP to assign to the Load Balancer.
  /// [loadBalancerId] ID of the Load Balancer.
  /// [networkId] ID of the Network to attach the Load Balancer to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Load Balancer will be attached to the last subnet (ordered by `ip_range`).
  /// [subnetId] ID of the Subnet to attach the Load Balancer to. Required if `network_id` is not set.
  LoadBalancerNetworkState({
    pulumi.Output<bool>? enablePublicInterface,
    pulumi.Output<String>? ip,
    pulumi.Output<int>? loadBalancerId,
    pulumi.Output<int>? networkId,
    pulumi.Output<String>? subnetId,
  }) :
      enablePublicInterface = pulumi.Input.asOptionalInput<bool>(enablePublicInterface),
      ip = pulumi.Input.asOptionalInput<String>(ip),
      loadBalancerId = pulumi.Input.asOptionalInput<int>(loadBalancerId),
      networkId = pulumi.Input.asOptionalInput<int>(networkId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicInterface': ?enablePublicInterface,
      'ip': ?ip,
      'loadBalancerId': ?loadBalancerId,
      'networkId': ?networkId,
      'subnetId': ?subnetId,
    };
  }

  factory LoadBalancerNetworkState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerNetworkState(
      enablePublicInterface: map['enablePublicInterface'] == null ? null : pulumi.Output.create<bool>(map['enablePublicInterface'] as bool),
      ip: map['ip'] == null ? null : pulumi.Output.create<String>(map['ip'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<int>(map['loadBalancerId'] as int),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<int>(map['networkId'] as int),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

