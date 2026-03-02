// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_f5_big_ip_config.dart';
import 'vmware_manual_lb_config.dart';
import 'vmware_metal_lb_config.dart';
import 'vmware_vip_config.dart';

/// Specifies the locad balancer config for the VMware user cluster.
class VmwareLoadBalancerConfig {
  /// Configuration for F5 Big IP typed load balancers.
  final pulumi.Input<VmwareF5BigIpConfig>? f5Config;
  /// Manually configured load balancers.
  final pulumi.Input<VmwareManualLbConfig>? manualLbConfig;
  /// Configuration for MetalLB typed load balancers.
  final pulumi.Input<VmwareMetalLbConfig>? metalLbConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<VmwareVipConfig>? vipConfig;

  /// Creates a new [VmwareLoadBalancerConfig].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB typed load balancers.
  /// [vipConfig] The VIPs used by the load balancer.
  VmwareLoadBalancerConfig({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?pulumi.Input.mapOptionalInputValue<VmwareF5BigIpConfig, Map<String, dynamic>>(f5Config, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<VmwareManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': ?pulumi.Input.mapOptionalInputValue<VmwareMetalLbConfig, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'vipConfig': ?pulumi.Input.mapOptionalInputValue<VmwareVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory VmwareLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return VmwareLoadBalancerConfig(
      f5Config: map['f5Config'] == null ? null : (VmwareF5BigIpConfig.fromMap((map['f5Config']! as Map).cast<String, dynamic>())).input(),
      manualLbConfig: map['manualLbConfig'] == null ? null : (VmwareManualLbConfig.fromMap((map['manualLbConfig']! as Map).cast<String, dynamic>())).input(),
      metalLbConfig: map['metalLbConfig'] == null ? null : (VmwareMetalLbConfig.fromMap((map['metalLbConfig']! as Map).cast<String, dynamic>())).input(),
      vipConfig: map['vipConfig'] == null ? null : (VmwareVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

