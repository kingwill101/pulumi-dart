// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_bgp_lb_config.dart';
import 'bare_metal_manual_lb_config.dart';
import 'bare_metal_metal_lb_config.dart';
import 'bare_metal_port_config.dart';
import 'bare_metal_vip_config.dart';

/// Specifies the load balancer configuration.
class BareMetalLoadBalancerConfig {
  /// Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  final pulumi.Input<BareMetalBgpLbConfig>? bgpLbConfig;
  /// Manually configured load balancers.
  final pulumi.Input<BareMetalManualLbConfig>? manualLbConfig;
  /// Configuration for MetalLB load balancers.
  final pulumi.Input<BareMetalMetalLbConfig>? metalLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final pulumi.Input<BareMetalPortConfig>? portConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<BareMetalVipConfig>? vipConfig;

  /// Creates a new [BareMetalLoadBalancerConfig].
  /// [bgpLbConfig] Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB load balancers.
  /// [portConfig] Configures the ports that the load balancer will listen on.
  /// [vipConfig] The VIPs used by the load balancer.
  BareMetalLoadBalancerConfig({
    this.bgpLbConfig,
    this.manualLbConfig,
    this.metalLbConfig,
    this.portConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalBgpLbConfig, Map<String, dynamic>>(bgpLbConfig, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalMetalLbConfig, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'portConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalPortConfig, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerConfig(
      bgpLbConfig: map['bgpLbConfig'] == null ? null : (BareMetalBgpLbConfig.fromMap((map['bgpLbConfig']! as Map).cast<String, dynamic>())).input(),
      manualLbConfig: map['manualLbConfig'] == null ? null : (BareMetalManualLbConfig.fromMap((map['manualLbConfig']! as Map).cast<String, dynamic>())).input(),
      metalLbConfig: map['metalLbConfig'] == null ? null : (BareMetalMetalLbConfig.fromMap((map['metalLbConfig']! as Map).cast<String, dynamic>())).input(),
      portConfig: map['portConfig'] == null ? null : (BareMetalPortConfig.fromMap((map['portConfig']! as Map).cast<String, dynamic>())).input(),
      vipConfig: map['vipConfig'] == null ? null : (BareMetalVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

