// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_manual_lb_config.dart';
import 'bare_metal_admin_port_config.dart';
import 'bare_metal_admin_vip_config.dart';

/// BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.
class BareMetalAdminLoadBalancerConfig {
  /// Manually configured load balancers.
  final pulumi.Input<BareMetalAdminManualLbConfig>? manualLbConfig;
  /// Configures the ports that the load balancer will listen on.
  final pulumi.Input<BareMetalAdminPortConfig>? portConfig;
  /// The VIPs used by the load balancer.
  final pulumi.Input<BareMetalAdminVipConfig>? vipConfig;

  /// Creates a new [BareMetalAdminLoadBalancerConfig].
  /// [manualLbConfig] Manually configured load balancers.
  /// [portConfig] Configures the ports that the load balancer will listen on.
  /// [vipConfig] The VIPs used by the load balancer.
  BareMetalAdminLoadBalancerConfig({
    this.manualLbConfig,
    this.portConfig,
    this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'portConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminPortConfig, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminLoadBalancerConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminLoadBalancerConfig(
      manualLbConfig: map['manualLbConfig'] == null ? null : (BareMetalAdminManualLbConfig.fromMap((map['manualLbConfig']! as Map).cast<String, dynamic>())).input(),
      portConfig: map['portConfig'] == null ? null : (BareMetalAdminPortConfig.fromMap((map['portConfig']! as Map).cast<String, dynamic>())).input(),
      vipConfig: map['vipConfig'] == null ? null : (BareMetalAdminVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

