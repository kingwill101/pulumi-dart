// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_manual_lb_config_response.dart';
import 'bare_metal_admin_port_config_response.dart';
import 'bare_metal_admin_vip_config_response.dart';

/// BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
class BareMetalAdminLoadBalancerConfigResponse {
  /// Manually configured load balancers.
  final pulumi.Input<BareMetalAdminManualLbConfigResponse> manualLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final pulumi.Input<BareMetalAdminPortConfigResponse> portConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<BareMetalAdminVipConfigResponse> vipConfig;

  /// Creates a new [BareMetalAdminLoadBalancerConfigResponse].
  /// [manualLbConfig] Manually configured load balancers.
  /// [portConfig] Configures the ports that the load balancer will listen on.
  /// [vipConfig] The VIPs used by the load balancer.
  BareMetalAdminLoadBalancerConfigResponse({
    required this.manualLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualLbConfig': pulumi.Input.mapInputValue<BareMetalAdminManualLbConfigResponse, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'portConfig': pulumi.Input.mapInputValue<BareMetalAdminPortConfigResponse, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<BareMetalAdminVipConfigResponse, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminLoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminLoadBalancerConfigResponse(
      manualLbConfig: (BareMetalAdminManualLbConfigResponse.fromMap((map['manualLbConfig'] as Map).cast<String, dynamic>())).input(),
      portConfig: (BareMetalAdminPortConfigResponse.fromMap((map['portConfig'] as Map).cast<String, dynamic>())).input(),
      vipConfig: (BareMetalAdminVipConfigResponse.fromMap((map['vipConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

