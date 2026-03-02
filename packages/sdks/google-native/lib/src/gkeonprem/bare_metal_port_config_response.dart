// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies load balancer ports for the bare metal user cluster.
class BareMetalPortConfigResponse {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int> controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalPortConfigResponse].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  BareMetalPortConfigResponse({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalPortConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalPortConfigResponse(
      controlPlaneLoadBalancerPort: (map['controlPlaneLoadBalancerPort'] as int).input(),
    );
  }
}

