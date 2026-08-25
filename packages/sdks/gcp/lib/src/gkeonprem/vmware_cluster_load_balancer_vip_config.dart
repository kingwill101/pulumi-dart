// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this cluster.
  final pulumi.Input<String?>? controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this cluster.
  ///
  /// &lt;a name="nestedLoadBalancerF5Config"&gt;&lt;/a&gt;The `f5Config` block supports:
  final pulumi.Input<String?>? ingressVip;

  /// Creates a new [VMwareClusterLoadBalancerVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this cluster.
  const VMwareClusterLoadBalancerVipConfig({
    this.controlPlaneVip,
    this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
      'ingressVip': ?ingressVip,
    };
  }

  factory VMwareClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerVipConfig(
      controlPlaneVip: (() { final guardedValue = map['controlPlaneVip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressVip: (() { final guardedValue = map['ingressVip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
