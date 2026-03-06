// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final pulumi.Input<String> controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this cluster.
  final pulumi.Input<String> ingressVip;

  /// Creates a new [VmwareVipConfigResponse].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this cluster.
  const VmwareVipConfigResponse({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
      'ingressVip': ingressVip,
    };
  }

  factory VmwareVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVipConfigResponse(
      controlPlaneVip: pulumi.Input.fromValue(map['controlPlaneVip'] as String),
      ingressVip: pulumi.Input.fromValue(map['ingressVip'] as String),
    );
  }
}

