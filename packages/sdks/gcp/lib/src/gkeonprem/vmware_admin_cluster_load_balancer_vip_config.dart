// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterLoadBalancerVipConfig {
  /// The VIP to configure the load balancer for add-ons.
  ///
  /// <a name="nested_load_balancer_f5_config"></a>The `f5_config` block supports:
  final pulumi.Input<String>? addonsVip;
  /// The VIP which you previously set aside for the Kubernetes
  /// API of this VMware Admin Cluster.
  final pulumi.Input<String> controlPlaneVip;

  /// Creates a new [VmwareAdminClusterLoadBalancerVipConfig].
  /// [addonsVip] The VIP to configure the load balancer for add-ons.
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes
  VmwareAdminClusterLoadBalancerVipConfig({
    this.addonsVip,
    required this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonsVip': ?addonsVip,
      'controlPlaneVip': controlPlaneVip,
    };
  }

  factory VmwareAdminClusterLoadBalancerVipConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancerVipConfig(
      addonsVip: map['addonsVip'] == null ? null : (map['addonsVip']! as String).input(),
      controlPlaneVip: (map['controlPlaneVip'] as String).input(),
    );
  }
}

