// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminPortConfig is the specification of load balancer ports.
class BareMetalAdminPortConfigResponse {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int> controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminPortConfigResponse].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  const BareMetalAdminPortConfigResponse({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminPortConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminPortConfigResponse(
      controlPlaneLoadBalancerPort: pulumi.Input.fromValue(map['controlPlaneLoadBalancerPort'] as int),
    );
  }
}

