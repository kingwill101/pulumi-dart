// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterLoadBalancerPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int> controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalClusterLoadBalancerPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalClusterLoadBalancerPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerPortConfig(
      controlPlaneLoadBalancerPort: (map['controlPlaneLoadBalancerPort'] as int).input(),
    );
  }
}

