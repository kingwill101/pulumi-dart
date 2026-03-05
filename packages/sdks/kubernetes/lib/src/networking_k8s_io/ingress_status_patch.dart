// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_load_balancer_status_patch.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatusPatch {
  /// loadBalancer contains the current status of the load-balancer.
  final pulumi.Input<IngressLoadBalancerStatusPatch>? loadBalancer;

  /// Creates a new [IngressStatusPatch].
  /// [loadBalancer] loadBalancer contains the current status of the load-balancer.
  IngressStatusPatch({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<IngressLoadBalancerStatusPatch, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
    };
  }

  factory IngressStatusPatch.fromMap(Map<String, dynamic> map) {
    return IngressStatusPatch(
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressLoadBalancerStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

