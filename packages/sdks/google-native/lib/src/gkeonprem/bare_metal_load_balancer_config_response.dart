// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_bgp_lb_config_response.dart';
import 'bare_metal_manual_lb_config_response.dart';
import 'bare_metal_metal_lb_config_response.dart';
import 'bare_metal_port_config_response.dart';
import 'bare_metal_vip_config_response.dart';

/// Specifies the load balancer configuration.
class BareMetalLoadBalancerConfigResponse {
  /// Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  final BareMetalBgpLbConfigResponse bgpLbConfig;
  /// Manually configured load balancers.
  final BareMetalManualLbConfigResponse manualLbConfig;
  /// Configuration for MetalLB load balancers.
  final BareMetalMetalLbConfigResponse metalLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final BareMetalPortConfigResponse portConfig;
  /// The VIPs used by the load balancer.
  final BareMetalVipConfigResponse vipConfig;

  /// Creates a new [BareMetalLoadBalancerConfigResponse].
  /// [bgpLbConfig] Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB load balancers.
  /// [portConfig] Configures the ports that the load balancer will listen on.
  /// [vipConfig] The VIPs used by the load balancer.
  BareMetalLoadBalancerConfigResponse({
    required this.bgpLbConfig,
    required this.manualLbConfig,
    required this.metalLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': bgpLbConfig.toMap(),
      'manualLbConfig': manualLbConfig.toMap(),
      'metalLbConfig': metalLbConfig.toMap(),
      'portConfig': portConfig.toMap(),
      'vipConfig': vipConfig.toMap(),
    };
  }

  factory BareMetalLoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerConfigResponse(
      bgpLbConfig: BareMetalBgpLbConfigResponse.fromMap((map['bgpLbConfig'] as Map).cast<String, dynamic>()),
      manualLbConfig: BareMetalManualLbConfigResponse.fromMap((map['manualLbConfig'] as Map).cast<String, dynamic>()),
      metalLbConfig: BareMetalMetalLbConfigResponse.fromMap((map['metalLbConfig'] as Map).cast<String, dynamic>()),
      portConfig: BareMetalPortConfigResponse.fromMap((map['portConfig'] as Map).cast<String, dynamic>()),
      vipConfig: BareMetalVipConfigResponse.fromMap((map['vipConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

