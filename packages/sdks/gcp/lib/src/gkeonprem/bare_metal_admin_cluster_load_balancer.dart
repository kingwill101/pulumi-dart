// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config.dart';
import 'bare_metal_admin_cluster_load_balancer_manual_lb_config.dart';
import 'bare_metal_admin_cluster_load_balancer_port_config.dart';
import 'bare_metal_admin_cluster_load_balancer_vip_config.dart';

class BareMetalAdminClusterLoadBalancer {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerBgpLbConfig?>? bgpLbConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerManualLbConfig?>? manualLbConfig;
  /// Specifies the load balancer ports.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerPortConfig> portConfig;
  /// Specified the Bare Metal Load Balancer Config
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerVipConfig> vipConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancer].
  /// [bgpLbConfig] A nested object resource.
  /// [manualLbConfig] A nested object resource.
  /// [portConfig] Specifies the load balancer ports.
  /// [vipConfig] Specified the Bare Metal Load Balancer Config
  const BareMetalAdminClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterLoadBalancerBgpLbConfig, Map<String, dynamic>>(bgpLbConfig, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterLoadBalancerManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'portConfig': pulumi.Input.mapInputValue<BareMetalAdminClusterLoadBalancerPortConfig, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<BareMetalAdminClusterLoadBalancerVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancer(
      bgpLbConfig: (() { final guardedValue = map['bgpLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerBgpLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manualLbConfig: (() { final guardedValue = map['manualLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerManualLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portConfig: pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerPortConfig.fromMap((map['portConfig']! as Map).cast<String, dynamic>())),
      vipConfig: pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
