// ignore_for_file: unused_element, unnecessary_cast

import '../core/load_balancer_status_patch.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatusPatch {
  /// LoadBalancer contains the current status of the load-balancer.
  final LoadBalancerStatusPatch? loadBalancer;

  /// Creates a new [IngressStatusPatch].
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer.
  IngressStatusPatch({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
    };
  }

  factory IngressStatusPatch.fromMap(Map<String, dynamic> map) {
    return IngressStatusPatch(
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerStatusPatch.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

