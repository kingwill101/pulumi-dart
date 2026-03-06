// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_advertisement.dart';
import 'ip_address_pool.dart';
import 'service_load_balancer_bgp_peer.dart';

class BgpServiceLoadBalancerConfiguration {
  /// The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  final pulumi.Input<List<BgpAdvertisement>>? bgpAdvertisements;
  /// The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  final pulumi.Input<List<ServiceLoadBalancerBgpPeer>>? bgpPeers;
  /// The indicator to specify if the load balancer peers with the network fabric.
  final pulumi.Input<String>? fabricPeeringEnabled;
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final pulumi.Input<List<IpAddressPool>>? ipAddressPools;

  /// Creates a new [BgpServiceLoadBalancerConfiguration].
  /// [bgpAdvertisements] The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  /// [bgpPeers] The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  /// [fabricPeeringEnabled] The indicator to specify if the load balancer peers with the network fabric.
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  const BgpServiceLoadBalancerConfiguration({
    this.bgpAdvertisements,
    this.bgpPeers,
    this.fabricPeeringEnabled,
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAdvertisements': ?pulumi.Input.mapOptionalInputValue<List<BgpAdvertisement>, List<Map<String, dynamic>>>(bgpAdvertisements, (value) => pulumi.Input.encodeList<BgpAdvertisement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bgpPeers': ?pulumi.Input.mapOptionalInputValue<List<ServiceLoadBalancerBgpPeer>, List<Map<String, dynamic>>>(bgpPeers, (value) => pulumi.Input.encodeList<ServiceLoadBalancerBgpPeer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fabricPeeringEnabled': ?fabricPeeringEnabled,
      'ipAddressPools': ?pulumi.Input.mapOptionalInputValue<List<IpAddressPool>, List<Map<String, dynamic>>>(ipAddressPools, (value) => pulumi.Input.encodeList<IpAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BgpServiceLoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return BgpServiceLoadBalancerConfiguration(
      bgpAdvertisements: (() { final guardedValue = map['bgpAdvertisements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BgpAdvertisement>(guardedValue, (value) => BgpAdvertisement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bgpPeers: (() { final guardedValue = map['bgpPeers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceLoadBalancerBgpPeer>(guardedValue, (value) => ServiceLoadBalancerBgpPeer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fabricPeeringEnabled: (() { final guardedValue = map['fabricPeeringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressPools: (() { final guardedValue = map['ipAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddressPool>(guardedValue, (value) => IpAddressPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

