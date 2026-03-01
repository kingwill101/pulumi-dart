// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_bgp_lb_config.dart';
import 'bare_metal_manual_lb_config.dart';
import 'bare_metal_metal_lb_config.dart';
import 'bare_metal_port_config.dart';
import 'bare_metal_vip_config.dart';

/// Specifies the load balancer configuration.
class BareMetalLoadBalancerConfig {
  /// Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  final BareMetalBgpLbConfig? bgpLbConfig;
  /// Manually configured load balancers.
  final BareMetalManualLbConfig? manualLbConfig;
  /// Configuration for MetalLB load balancers.
  final BareMetalMetalLbConfig? metalLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final BareMetalPortConfig? portConfig;
  /// The VIPs used by the load balancer.
  final BareMetalVipConfig? vipConfig;

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
      'bgpLbConfig': ?bgpLbConfig == null ? null : bgpLbConfig!.toMap(),
      'manualLbConfig': ?manualLbConfig == null ? null : manualLbConfig!.toMap(),
      'metalLbConfig': ?metalLbConfig == null ? null : metalLbConfig!.toMap(),
      'portConfig': ?portConfig == null ? null : portConfig!.toMap(),
      'vipConfig': ?vipConfig == null ? null : vipConfig!.toMap(),
    };
  }

  factory BareMetalLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerConfig(
      bgpLbConfig: map['bgpLbConfig'] == null ? null : BareMetalBgpLbConfig.fromMap((map['bgpLbConfig'] as Map).cast<String, dynamic>()),
      manualLbConfig: map['manualLbConfig'] == null ? null : BareMetalManualLbConfig.fromMap((map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: map['metalLbConfig'] == null ? null : BareMetalMetalLbConfig.fromMap((map['metalLbConfig'] as Map).cast<String, dynamic>()),
      portConfig: map['portConfig'] == null ? null : BareMetalPortConfig.fromMap((map['portConfig'] as Map).cast<String, dynamic>()),
      vipConfig: map['vipConfig'] == null ? null : BareMetalVipConfig.fromMap((map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

