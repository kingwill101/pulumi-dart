// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerPortConfig {
  /// The port that control plane hosted load balancers will listen on.
  final pulumi.Input<int> controlPlaneLoadBalancerPort;

  /// Creates a new [BareMetalAdminClusterLoadBalancerPortConfig].
  /// [controlPlaneLoadBalancerPort] The port that control plane hosted load balancers will listen on.
  const BareMetalAdminClusterLoadBalancerPortConfig({
    required this.controlPlaneLoadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneLoadBalancerPort': controlPlaneLoadBalancerPort,
    };
  }

  factory BareMetalAdminClusterLoadBalancerPortConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerPortConfig(
      controlPlaneLoadBalancerPort: pulumi.Input.fromValue((map['controlPlaneLoadBalancerPort'] as num).toInt()),
    );
  }
}
