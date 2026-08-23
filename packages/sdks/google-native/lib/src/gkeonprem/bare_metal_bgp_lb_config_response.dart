// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_bgp_peer_config_response.dart';
import 'bare_metal_load_balancer_address_pool_response.dart';
import 'bare_metal_load_balancer_node_pool_config_response.dart';

/// BareMetalBgpLbConfig represents configuration parameters for a Border Gateway Protocol (BGP) load balancer.
class BareMetalBgpLbConfigResponse {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final pulumi.Input<List<BareMetalLoadBalancerAddressPoolResponse>> addressPools;
  /// BGP autonomous system number (ASN) of the cluster. This field can be updated after cluster creation.
  final pulumi.Input<String> asn;
  /// The list of BGP peers that the cluster will connect to. At least one peer must be configured for each control plane node. Control plane nodes will connect to these peers to advertise the control plane VIP. The Services load balancer also uses these peers by default. This field can be updated after cluster creation.
  final pulumi.Input<List<BareMetalBgpPeerConfigResponse>> bgpPeerConfigs;
  /// Specifies the node pool running data plane load balancing. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used for data plane load balancing.
  final pulumi.Input<BareMetalLoadBalancerNodePoolConfigResponse> loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalBgpLbConfigResponse].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  /// [asn] BGP autonomous system number (ASN) of the cluster. This field can be updated after cluster creation.
  /// [bgpPeerConfigs] The list of BGP peers that the cluster will connect to. At least one peer must be configured for each control plane node. Control plane nodes will connect to these peers to advertise the control plane VIP. The Services load balancer also uses these peers by default. This field can be updated after cluster creation.
  /// [loadBalancerNodePoolConfig] Specifies the node pool running data plane load balancing. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used for data plane load balancing.
  const BareMetalBgpLbConfigResponse({
    required this.addressPools,
    required this.asn,
    required this.bgpPeerConfigs,
    required this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': pulumi.Input.mapInputValue<List<BareMetalLoadBalancerAddressPoolResponse>, List<Map<String, dynamic>>>(addressPools, (value) => pulumi.Input.encodeList<BareMetalLoadBalancerAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asn': asn,
      'bgpPeerConfigs': pulumi.Input.mapInputValue<List<BareMetalBgpPeerConfigResponse>, List<Map<String, dynamic>>>(bgpPeerConfigs, (value) => pulumi.Input.encodeList<BareMetalBgpPeerConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerNodePoolConfig': pulumi.Input.mapInputValue<BareMetalLoadBalancerNodePoolConfigResponse, Map<String, dynamic>>(loadBalancerNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalBgpLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalBgpLbConfigResponse(
      addressPools: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalLoadBalancerAddressPoolResponse>(map['addressPools']!, (value) => BareMetalLoadBalancerAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))),
      asn: pulumi.Input.fromValue(map['asn'] as String),
      bgpPeerConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalBgpPeerConfigResponse>(map['bgpPeerConfigs']!, (value) => BareMetalBgpPeerConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancerNodePoolConfig: pulumi.Input.fromValue(BareMetalLoadBalancerNodePoolConfigResponse.fromMap((map['loadBalancerNodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
