// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster.
  final pulumi.Input<String> controlPlaneVip;
  /// The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster.
  final pulumi.Input<String> ingressVip;

  /// Creates a new [BareMetalClusterLoadBalancerVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this Bare Metal User Cluster.
  /// [ingressVip] The VIP which you previously set aside for ingress traffic into this Bare Metal User Cluster.
  const BareMetalClusterLoadBalancerVipConfig({
    required this.controlPlaneVip,
    required this.ingressVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
      'ingressVip': ingressVip,
    };
  }

  factory BareMetalClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerVipConfig(
      controlPlaneVip: pulumi.Input.fromValue(map['controlPlaneVip'] as String),
      ingressVip: pulumi.Input.fromValue(map['ingressVip'] as String),
    );
  }
}

