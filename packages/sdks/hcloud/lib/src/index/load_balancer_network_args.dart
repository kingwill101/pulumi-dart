// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_load_balancer_network_load_balancer_network_args_doc}
/// The set of arguments for LoadBalancerNetwork.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_network_load_balancer_network_args_doc}
class LoadBalancerNetworkArgs {
  /// Wether the Load Balancer public interface is enabled. Default is `true`.
  final pulumi.Input<bool>? enablePublicInterface;
  /// IP to assign to the Load Balancer.
  final pulumi.Input<String>? ip;
  /// ID of the Load Balancer.
  final pulumi.Input<int> loadBalancerId;
  /// ID of the Network to attach the Load Balancer to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Load Balancer will be attached to the last subnet (ordered by `ip_range`).
  final pulumi.Input<int>? networkId;
  /// ID of the Subnet to attach the Load Balancer to. Required if `network_id` is not set.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [LoadBalancerNetworkArgs].
  /// [enablePublicInterface] Wether the Load Balancer public interface is enabled. Default is `true`.
  /// [ip] IP to assign to the Load Balancer.
  /// [loadBalancerId] ID of the Load Balancer.
  /// [networkId] ID of the Network to attach the Load Balancer to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Load Balancer will be attached to the last subnet (ordered by `ip_range`).
  /// [subnetId] ID of the Subnet to attach the Load Balancer to. Required if `network_id` is not set.
  LoadBalancerNetworkArgs({
    this.enablePublicInterface,
    this.ip,
    required this.loadBalancerId,
    this.networkId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicInterface': ?enablePublicInterface,
      'ip': ?ip,
      'loadBalancerId': loadBalancerId,
      'networkId': ?networkId,
      'subnetId': ?subnetId,
    };
  }

  factory LoadBalancerNetworkArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerNetworkArgs(
      enablePublicInterface: map['enablePublicInterface'] == null ? null : (map['enablePublicInterface']! as bool).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      loadBalancerId: (map['loadBalancerId'] as int).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

