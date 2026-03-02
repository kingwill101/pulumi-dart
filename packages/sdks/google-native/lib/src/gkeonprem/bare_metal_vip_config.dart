// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VIP config for the bare metal load balancer.
class BareMetalVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  final pulumi.Input<String>? controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  final pulumi.Input<String>? ingressVip;

  /// Creates a new [BareMetalVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this bare metal user cluster.
  BareMetalVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
      'ingressVip': ?ingressVip,
    };
  }

  factory BareMetalVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null ? null : (map['controlPlaneVip'] as String).input(),
      ingressVip: map['ingressVip'] == null ? null : (map['ingressVip'] as String).input(),
    );
  }
}

