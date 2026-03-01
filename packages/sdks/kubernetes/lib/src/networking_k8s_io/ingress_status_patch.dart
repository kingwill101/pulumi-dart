// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_load_balancer_status_patch.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatusPatch {
  /// loadBalancer contains the current status of the load-balancer.
  final IngressLoadBalancerStatusPatch? loadBalancer;

  /// Creates a new [IngressStatusPatch].
  /// [loadBalancer] loadBalancer contains the current status of the load-balancer.
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
      loadBalancer: map['loadBalancer'] == null ? null : IngressLoadBalancerStatusPatch.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
    );
  }
}

