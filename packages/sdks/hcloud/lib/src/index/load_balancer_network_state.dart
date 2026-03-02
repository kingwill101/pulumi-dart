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
    this.enablePublicInterface,
    this.ip,
    this.loadBalancerId,
    this.networkId,
    this.subnetId,
  });

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
      enablePublicInterface: map['enablePublicInterface'] == null ? null : (map['enablePublicInterface']! as bool).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as int).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

