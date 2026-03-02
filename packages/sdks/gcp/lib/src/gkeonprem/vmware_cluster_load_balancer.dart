// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_load_balancer_f5_config.dart';
import 'vmware_cluster_load_balancer_manual_lb_config.dart';
import 'vmware_cluster_load_balancer_metal_lb_config.dart';
import 'vmware_cluster_load_balancer_vip_config.dart';

class VMwareClusterLoadBalancer {
  /// Configuration for F5 Big IP typed load balancers.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancerF5Config>? f5Config;
  /// Manually configured load balancers.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancerManualLbConfig>? manualLbConfig;
  /// Configuration for MetalLB typed load balancers.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancerMetalLbConfig>? metalLbConfig;
  /// The VIPs used by the load balancer.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterLoadBalancerVipConfig>? vipConfig;

  /// Creates a new [VMwareClusterLoadBalancer].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB typed load balancers.
  /// [vipConfig] The VIPs used by the load balancer.
  VMwareClusterLoadBalancer({
    this.f5Config,
    this.manualLbConfig,
    this.metalLbConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': ?pulumi.Input.mapOptionalInputValue<VMwareClusterLoadBalancerF5Config, Map<String, dynamic>>(f5Config, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterLoadBalancerManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterLoadBalancerMetalLbConfig, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'vipConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterLoadBalancerVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory VMwareClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancer(
      f5Config: map['f5Config'] == null ? null : (VMwareClusterLoadBalancerF5Config.fromMap((map['f5Config'] as Map).cast<String, dynamic>())).input(),
      manualLbConfig: map['manualLbConfig'] == null ? null : (VMwareClusterLoadBalancerManualLbConfig.fromMap((map['manualLbConfig'] as Map).cast<String, dynamic>())).input(),
      metalLbConfig: map['metalLbConfig'] == null ? null : (VMwareClusterLoadBalancerMetalLbConfig.fromMap((map['metalLbConfig'] as Map).cast<String, dynamic>())).input(),
      vipConfig: map['vipConfig'] == null ? null : (VMwareClusterLoadBalancerVipConfig.fromMap((map['vipConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

