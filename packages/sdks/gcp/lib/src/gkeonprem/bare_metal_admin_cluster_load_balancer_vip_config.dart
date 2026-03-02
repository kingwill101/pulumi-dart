// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalAdminClusterLoadBalancerVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this Bare Metal Admin Cluster.
  final pulumi.Input<String> controlPlaneVip;

  /// Creates a new [BareMetalAdminClusterLoadBalancerVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this Bare Metal Admin Cluster.
  BareMetalAdminClusterLoadBalancerVipConfig({
    required this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': controlPlaneVip,
    };
  }

  factory BareMetalAdminClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerVipConfig(
      controlPlaneVip: (map['controlPlaneVip'] as String).input(),
    );
  }
}

