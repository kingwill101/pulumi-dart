// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the VIP config for the VMware user cluster load balancer.
class VmwareVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final pulumi.Input<String>? controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this cluster.
  final pulumi.Input<String>? ingressVip;

  /// Creates a new [VmwareVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this cluster.
  VmwareVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
      'ingressVip': ?ingressVip,
    };
  }

  factory VmwareVipConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVipConfig(
      controlPlaneVip: map['controlPlaneVip'] == null ? null : (map['controlPlaneVip']! as String).input(),
      ingressVip: map['ingressVip'] == null ? null : (map['ingressVip']! as String).input(),
    );
  }
}

