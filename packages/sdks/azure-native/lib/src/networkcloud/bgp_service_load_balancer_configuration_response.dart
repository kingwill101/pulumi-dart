// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_advertisement_response.dart';
import 'ip_address_pool_response.dart';
import 'service_load_balancer_bgp_peer_response.dart';

class BgpServiceLoadBalancerConfigurationResponse {
  /// The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  final pulumi.Input<List<BgpAdvertisementResponse>>? bgpAdvertisements;

  /// The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  final pulumi.Input<List<ServiceLoadBalancerBgpPeerResponse>>? bgpPeers;

  /// The indicator to specify if the load balancer peers with the network fabric.
  final pulumi.Input<String>? fabricPeeringEnabled;

  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final pulumi.Input<List<IpAddressPoolResponse>>? ipAddressPools;

  /// Creates a new [BgpServiceLoadBalancerConfigurationResponse].
  /// [bgpAdvertisements] The association of IP address pools to the communities and peers, allowing for announcement of IPs.
  /// [bgpPeers] The list of additional BgpPeer entities that the Kubernetes cluster will peer with. All peering must be explicitly defined.
  /// [fabricPeeringEnabled] The indicator to specify if the load balancer peers with the network fabric.
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  BgpServiceLoadBalancerConfigurationResponse({
    this.bgpAdvertisements,
    this.bgpPeers,
    this.fabricPeeringEnabled,
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAdvertisements':
          ?pulumi.Input.mapOptionalInputValue<
            List<BgpAdvertisementResponse>,
            List<Map<String, dynamic>>
          >(
            bgpAdvertisements,
            (value) =>
                pulumi.Input.encodeList<
                  BgpAdvertisementResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bgpPeers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceLoadBalancerBgpPeerResponse>,
            List<Map<String, dynamic>>
          >(
            bgpPeers,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceLoadBalancerBgpPeerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fabricPeeringEnabled': ?fabricPeeringEnabled,
      'ipAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpAddressPoolResponse>,
            List<Map<String, dynamic>>
          >(
            ipAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  IpAddressPoolResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BgpServiceLoadBalancerConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BgpServiceLoadBalancerConfigurationResponse(
      bgpAdvertisements: (() {
        final guardedValue = map['bgpAdvertisements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BgpAdvertisementResponse>(
            guardedValue,
            (value) => BgpAdvertisementResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      bgpPeers: (() {
        final guardedValue = map['bgpPeers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceLoadBalancerBgpPeerResponse>(
            guardedValue,
            (value) => ServiceLoadBalancerBgpPeerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      fabricPeeringEnabled: (() {
        final guardedValue = map['fabricPeeringEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddressPools: (() {
        final guardedValue = map['ipAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpAddressPoolResponse>(
            guardedValue,
            (value) => IpAddressPoolResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
