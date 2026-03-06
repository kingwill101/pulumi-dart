// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_address_pool.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_bgp_peer_config.dart';
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfig {
  /// a list of non-overlapping IP pools used
  /// by load balancer typed services.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>>? addressPools;
  /// BGP autonomous system number (ASN) of the cluster.
  final pulumi.Input<int>? asn;
  /// BGP autonomous system number (ASN) of the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>>? bgpPeerConfigs;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig>? loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfig].
  /// [addressPools] a list of non-overlapping IP pools used
  /// [asn] BGP autonomous system number (ASN) of the cluster.
  /// [bgpPeerConfigs] BGP autonomous system number (ASN) of the cluster.
  /// [loadBalancerNodePoolConfig] A nested object resource.
  const BareMetalAdminClusterLoadBalancerBgpLbConfig({
    this.addressPools,
    this.asn,
    this.bgpPeerConfigs,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>, List<Map<String, dynamic>>>(addressPools, (value) => pulumi.Input.encodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': ?asn,
      'bgpPeerConfigs': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>, List<Map<String, dynamic>>>(bgpPeerConfigs, (value) => pulumi.Input.encodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerNodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig, Map<String, dynamic>>(loadBalancerNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfig(
      addressPools: (() { final guardedValue = map['addressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool>(guardedValue, (value) => BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bgpPeerConfigs: (() { final guardedValue = map['bgpPeerConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig>(guardedValue, (value) => BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerNodePoolConfig: (() { final guardedValue = map['loadBalancerNodePoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

