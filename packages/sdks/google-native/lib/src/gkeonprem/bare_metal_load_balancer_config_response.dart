// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_bgp_lb_config_response.dart';
import 'bare_metal_manual_lb_config_response.dart';
import 'bare_metal_metal_lb_config_response.dart';
import 'bare_metal_port_config_response.dart';
import 'bare_metal_vip_config_response.dart';

/// Specifies the load balancer configuration.
class BareMetalLoadBalancerConfigResponse {
  /// Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  final pulumi.Input<BareMetalBgpLbConfigResponse> bgpLbConfig;
  /// Manually configured load balancers.
  final pulumi.Input<BareMetalManualLbConfigResponse> manualLbConfig;
  /// Configuration for MetalLB load balancers.
  final pulumi.Input<BareMetalMetalLbConfigResponse> metalLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final pulumi.Input<BareMetalPortConfigResponse> portConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<BareMetalVipConfigResponse> vipConfig;

  /// Creates a new [BareMetalLoadBalancerConfigResponse].
  /// [bgpLbConfig] Configuration for BGP typed load balancers. When set network_config.advanced_networking is automatically set to true.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB load balancers.
  /// [portConfig] Configures the ports that the load balancer will listen on.
  /// [vipConfig] The VIPs used by the load balancer.
  const BareMetalLoadBalancerConfigResponse({
    required this.bgpLbConfig,
    required this.manualLbConfig,
    required this.metalLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': pulumi.Input.mapInputValue<BareMetalBgpLbConfigResponse, Map<String, dynamic>>(bgpLbConfig, (value) => value.toMap()),
      'manualLbConfig': pulumi.Input.mapInputValue<BareMetalManualLbConfigResponse, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': pulumi.Input.mapInputValue<BareMetalMetalLbConfigResponse, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'portConfig': pulumi.Input.mapInputValue<BareMetalPortConfigResponse, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<BareMetalVipConfigResponse, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalLoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerConfigResponse(
      bgpLbConfig: pulumi.Input.fromValue(BareMetalBgpLbConfigResponse.fromMap((map['bgpLbConfig']! as Map).cast<String, dynamic>())),
      manualLbConfig: pulumi.Input.fromValue(BareMetalManualLbConfigResponse.fromMap((map['manualLbConfig']! as Map).cast<String, dynamic>())),
      metalLbConfig: pulumi.Input.fromValue(BareMetalMetalLbConfigResponse.fromMap((map['metalLbConfig']! as Map).cast<String, dynamic>())),
      portConfig: pulumi.Input.fromValue(BareMetalPortConfigResponse.fromMap((map['portConfig']! as Map).cast<String, dynamic>())),
      vipConfig: pulumi.Input.fromValue(BareMetalVipConfigResponse.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
