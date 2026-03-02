// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_load_balancer_ingress.dart';

/// IngressLoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatus {
  /// ingress is a list containing ingress points for the load-balancer.
  final pulumi.Input<List<IngressLoadBalancerIngress>>? ingress;

  /// Creates a new [IngressLoadBalancerStatus].
  /// [ingress] ingress is a list containing ingress points for the load-balancer.
  IngressLoadBalancerStatus({
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<IngressLoadBalancerIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<IngressLoadBalancerIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressLoadBalancerStatus.fromMap(Map<String, dynamic> map) {
    return IngressLoadBalancerStatus(
      ingress: map['ingress'] == null ? null : (pulumi.Input.decodeList<IngressLoadBalancerIngress>(map['ingress'], (value) => IngressLoadBalancerIngress.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

