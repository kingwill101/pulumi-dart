// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_load_balancer_ingress_patch.dart';

/// IngressLoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatusPatch {
  /// ingress is a list containing ingress points for the load-balancer.
  final pulumi.Input<List<IngressLoadBalancerIngressPatch>>? ingress;

  /// Creates a new [IngressLoadBalancerStatusPatch].
  /// [ingress] ingress is a list containing ingress points for the load-balancer.
  IngressLoadBalancerStatusPatch({
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<IngressLoadBalancerIngressPatch>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<IngressLoadBalancerIngressPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressLoadBalancerStatusPatch.fromMap(Map<String, dynamic> map) {
    return IngressLoadBalancerStatusPatch(
      ingress: map['ingress'] == null ? null : (pulumi.Input.decodeList<IngressLoadBalancerIngressPatch>(map['ingress']!, (value) => IngressLoadBalancerIngressPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

