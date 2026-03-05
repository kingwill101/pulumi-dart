// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_load_balancer_bgp_lb_config.dart';
import 'bare_metal_cluster_load_balancer_manual_lb_config.dart';
import 'bare_metal_cluster_load_balancer_metal_lb_config.dart';
import 'bare_metal_cluster_load_balancer_port_config.dart';
import 'bare_metal_cluster_load_balancer_vip_config.dart';

class BareMetalClusterLoadBalancer {
  /// Configuration for BGP typed load balancers.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerBgpLbConfig>? bgpLbConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerManualLbConfig>? manualLbConfig;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerMetalLbConfig>? metalLbConfig;
  /// Specifies the load balancer ports.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerPortConfig> portConfig;
  /// Specified the Bare Metal Load Balancer Config
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerVipConfig> vipConfig;

  /// Creates a new [BareMetalClusterLoadBalancer].
  /// [bgpLbConfig] Configuration for BGP typed load balancers.
  /// [manualLbConfig] A nested object resource.
  /// [metalLbConfig] A nested object resource.
  /// [portConfig] Specifies the load balancer ports.
  /// [vipConfig] Specified the Bare Metal Load Balancer Config
  BareMetalClusterLoadBalancer({
    this.bgpLbConfig,
    this.manualLbConfig,
    this.metalLbConfig,
    required this.portConfig,
    required this.vipConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerBgpLbConfig, Map<String, dynamic>>(bgpLbConfig, (value) => value.toMap()),
      'manualLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerManualLbConfig, Map<String, dynamic>>(manualLbConfig, (value) => value.toMap()),
      'metalLbConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerMetalLbConfig, Map<String, dynamic>>(metalLbConfig, (value) => value.toMap()),
      'portConfig': pulumi.Input.mapInputValue<BareMetalClusterLoadBalancerPortConfig, Map<String, dynamic>>(portConfig, (value) => value.toMap()),
      'vipConfig': pulumi.Input.mapInputValue<BareMetalClusterLoadBalancerVipConfig, Map<String, dynamic>>(vipConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterLoadBalancer.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancer(
      bgpLbConfig: (() { final guardedValue = map['bgpLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterLoadBalancerBgpLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manualLbConfig: (() { final guardedValue = map['manualLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterLoadBalancerManualLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metalLbConfig: (() { final guardedValue = map['metalLbConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterLoadBalancerMetalLbConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portConfig: pulumi.Input.fromValue(BareMetalClusterLoadBalancerPortConfig.fromMap((map['portConfig']! as Map).cast<String, dynamic>())),
      vipConfig: pulumi.Input.fromValue(BareMetalClusterLoadBalancerVipConfig.fromMap((map['vipConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

