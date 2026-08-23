// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_load_balancer_f5_config.dart';
import 'vmware_admin_cluster_load_balancer_manual_lb_config.dart';
import 'vmware_admin_cluster_load_balancer_metal_lb_config.dart';
import 'vmware_admin_cluster_load_balancer_vip_config.dart';

class VmwareAdminClusterLoadBalancer {
  /// Configuration for F5 Big IP typed load balancers.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancerF5Config>? f5Config;
  /// Manually configured load balancers.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancerManualLbConfig>? manualLbConfig;
  /// Metal LB load balancers.
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancerMetalLbConfig>? metalLbConfig;
  /// Specified the VMware Load Balancer Config
  /// Structure is documented below.
  final pulumi.Input<VmwareAdminClusterLoadBalancerVipConfig> vipConfig;

  /// Creates a new [VmwareAdminClusterLoadBalancer].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Metal LB load balancers.
  /// [vipConfig] Specified the VMware Load Balancer Config
  const VmwareAdminClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterLoadBalancerF5Config, Map<String, dynamic>>(f5Config, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterLoadBalancerManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAdminClusterLoadBalancerMetalLbConfig, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<VmwareAdminClusterLoadBalancerVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory VmwareAdminClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterLoadBalancer(
      f5Config: (() { final guardedValue = map['f5Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterLoadBalancerF5Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manualLbConfig: (() { final guardedValue = map['manualLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterLoadBalancerManualLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metalLbConfig: (() { final guardedValue = map['metalLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAdminClusterLoadBalancerMetalLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vipConfig: pulumi.Input.fromValue(VmwareAdminClusterLoadBalancerVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
