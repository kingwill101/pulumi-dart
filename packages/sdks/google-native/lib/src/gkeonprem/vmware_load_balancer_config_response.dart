// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_f5_big_ip_config_response.dart';
import 'vmware_manual_lb_config_response.dart';
import 'vmware_metal_lb_config_response.dart';
import 'vmware_seesaw_config_response.dart';
import 'vmware_vip_config_response.dart';

/// Specifies the locad balancer config for the VMware user cluster.
class VmwareLoadBalancerConfigResponse {
  /// Configuration for F5 Big IP typed load balancers.
  final pulumi.Input<VmwareF5BigIpConfigResponse> f5Config;
  /// Manually configured load balancers.
  final pulumi.Input<VmwareManualLbConfigResponse> manualLbConfig;
  /// Configuration for MetalLB typed load balancers.
  final pulumi.Input<VmwareMetalLbConfigResponse> metalLbConfig;
  /// Configuration for Seesaw typed load balancers.
  final pulumi.Input<VmwareSeesawConfigResponse> seesawConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<VmwareVipConfigResponse> vipConfig;

  /// Creates a new [VmwareLoadBalancerConfigResponse].
  /// [f5Config] Configuration for F5 Big IP typed load balancers.
  /// [manualLbConfig] Manually configured load balancers.
  /// [metalLbConfig] Configuration for MetalLB typed load balancers.
  /// [seesawConfig] Configuration for Seesaw typed load balancers.
  /// [vipConfig] The VIPs used by the load balancer.
  const VmwareLoadBalancerConfigResponse({
    required this.f5Config,
    required this.manualLbConfig,
    required this.metalLbConfig,
    required this.seesawConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'f5Config': pulumi.Input.mapInputValue<VmwareF5BigIpConfigResponse, Map<String, dynamic>>(f5Config, (value) => value.toMap()),
      'manualLbConfig': pulumi.Input.mapInputValue<VmwareManualLbConfigResponse, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': pulumi.Input.mapInputValue<VmwareMetalLbConfigResponse, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'seesawConfig': pulumi.Input.mapInputValue<VmwareSeesawConfigResponse, Map<String, dynamic>>(seesawConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<VmwareVipConfigResponse, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory VmwareLoadBalancerConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareLoadBalancerConfigResponse(
      f5Config: pulumi.Input.fromValue(VmwareF5BigIpConfigResponse.fromMap((map['f5Config']! as Map).cast<String, dynamic>())),
      manualLbConfig: pulumi.Input.fromValue(VmwareManualLbConfigResponse.fromMap((map['manualLbConfig']! as Map).cast<String, dynamic>())),
      metalLbConfig: pulumi.Input.fromValue(VmwareMetalLbConfigResponse.fromMap((map['metalLbConfig']! as Map).cast<String, dynamic>())),
      seesawConfig: pulumi.Input.fromValue(VmwareSeesawConfigResponse.fromMap((map['seesawConfig']! as Map).cast<String, dynamic>())),
      vipConfig: pulumi.Input.fromValue(VmwareVipConfigResponse.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

