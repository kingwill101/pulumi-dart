// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterLoadBalancerVipConfig {
  /// The VIP to configure the load balancer for add-ons.
  ///
  /// &lt;a name="nestedLoadBalancerF5Config"&gt;&lt;/a&gt;The `f5Config` block supports:
  final pulumi.Input<String>? addonsVip;
  /// The VIP which you previously set aside for the Kubernetes
  /// API of this VMware Admin Cluster.
  final pulumi.Input<String> controlPlaneVip;

  /// Creates a new [VmwareAdminClusterLoadBalancerVipConfig].
  /// [addonsVip] The VIP to configure the load balancer for add-ons.
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes
  const VmwareAdminClusterLoadBalancerVipConfig({
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
      addonsVip: (() { final guardedValue = map['addonsVip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlaneVip: pulumi.Input.fromValue(map['controlPlaneVip'] as String),
    );
  }
}
