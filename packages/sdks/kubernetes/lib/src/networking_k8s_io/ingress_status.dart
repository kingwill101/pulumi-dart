// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatus {
  /// loadBalancer contains the current status of the load-balancer.
  final pulumi.Input<IngressLoadBalancerStatus>? loadBalancer;

  /// Creates a new [IngressStatus].
  /// [loadBalancer] loadBalancer contains the current status of the load-balancer.
  IngressStatus({
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<IngressLoadBalancerStatus, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
    };
  }

  factory IngressStatus.fromMap(Map<String, dynamic> map) {
    return IngressStatus(
      loadBalancer: map['loadBalancer'] == null ? null : (IngressLoadBalancerStatus.fromMap((map['loadBalancer']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

