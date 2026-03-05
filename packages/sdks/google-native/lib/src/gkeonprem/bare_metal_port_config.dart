// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies load balancer ports for the bare metal user cluster.
class BareMetalPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int>? controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalPortConfig({
    this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': ?controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalPortConfig(
      controlPlaneLoadBalancerPort: (() { final guardedValue = map['controlPlaneLoadBalancerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

