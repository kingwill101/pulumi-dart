// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/load_balancer_status.dart';

/// IngressStatus describe the current state of the Ingress.
class IngressStatusNetworkingK8sIoV1beta1 {
  /// LoadBalancer contains the current status of the load-balancer.
  final pulumi.Input<LoadBalancerStatus>? loadBalancer;

  /// Creates a new [IngressStatusNetworkingK8sIoV1beta1].
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer.
  IngressStatusNetworkingK8sIoV1beta1({this.loadBalancer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerStatus,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
    };
  }

  factory IngressStatusNetworkingK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return IngressStatusNetworkingK8sIoV1beta1(
      loadBalancer: (() {
        final guardedValue = map['loadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
