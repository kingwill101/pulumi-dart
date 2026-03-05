// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatus {
  /// LoadBalancer contains the current status of the load-balancer.
  final pulumi.Input<LoadBalancerStatus>? loadBalancer;

  /// Creates a new [IngressStatus].
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer.
  IngressStatus({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStatus, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
    };
  }

  factory IngressStatus.fromMap(Map<String, dynamic> map) {
    return IngressStatus(
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

