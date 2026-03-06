// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VIP config for the bare metal load balancer.
class BareMetalVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  final pulumi.Input<String> controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  final pulumi.Input<String> ingressVip;

  /// Creates a new [BareMetalVipConfigResponse].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  const BareMetalVipConfigResponse({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
      'ingressVip': ingressVip,
    };
  }

  factory BareMetalVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalVipConfigResponse(
      controlPlaneVip: pulumi.Input.fromValue(map['controlPlaneVip'] as String),
      ingressVip: pulumi.Input.fromValue(map['ingressVip'] as String),
    );
  }
}

