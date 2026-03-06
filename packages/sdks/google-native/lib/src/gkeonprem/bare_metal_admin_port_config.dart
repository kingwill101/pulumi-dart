// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminPortConfig is the specification of load balancer ports.
class BareMetalAdminPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int>? controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  const BareMetalAdminPortConfig({
    this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': ?controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminPortConfig(
      controlPlaneLoadBalancerPort: (() { final guardedValue = map['controlPlaneLoadBalancerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

