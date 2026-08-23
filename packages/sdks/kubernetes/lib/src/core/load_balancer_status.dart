// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_ingress.dart';

/// LoadBalancerStatus represents the status of a load-balancer.
class LoadBalancerStatus {
  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  final pulumi.Input<List<LoadBalancerIngress>>? ingress;

  /// Creates a new [LoadBalancerStatus].
  /// [ingress] Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  const LoadBalancerStatus({
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerIngress>, List<Map<String, dynamic>>>(ingress, (value) => pulumi.Input.encodeList<LoadBalancerIngress, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerStatus.fromMap(Map<String, dynamic> map) {
    return LoadBalancerStatus(
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerIngress>(guardedValue, (value) => LoadBalancerIngress.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
