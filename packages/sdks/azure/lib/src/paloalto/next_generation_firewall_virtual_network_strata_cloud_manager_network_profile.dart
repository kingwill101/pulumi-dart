// ignore_for_file: unused_element, unnecessary_cast

import 'next_generation_firewall_virtual_network_strata_cloud_manager_network_profile_vnet_configuration.dart';

class NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile {
  /// A list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  final List<String>? egressNatIpAddressIds;
  /// A list of Egress NAT IP addresses.
  final List<String>? egressNatIpAddresses;
  /// A list of Azure Public IP Address IDs.
  final List<String> publicIpAddressIds;
  /// A list of public IPs associated with this Next Generation Firewall.
  final List<String>? publicIpAddresses;
  /// A list of trusted ranges to use for the Network.
  final List<String>? trustedAddressRanges;
  /// A `vnet_configuration` block as defined below.
  final NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration vnetConfiguration;

  /// Creates a new [NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile].
  /// [egressNatIpAddressIds] A list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  /// [egressNatIpAddresses] A list of Egress NAT IP addresses.
  /// [publicIpAddressIds] A list of Azure Public IP Address IDs.
  /// [publicIpAddresses] A list of public IPs associated with this Next Generation Firewall.
  /// [trustedAddressRanges] A list of trusted ranges to use for the Network.
  /// [vnetConfiguration] A `vnet_configuration` block as defined below.
  NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile({
    this.egressNatIpAddressIds,
    this.egressNatIpAddresses,
    required this.publicIpAddressIds,
    this.publicIpAddresses,
    this.trustedAddressRanges,
    required this.vnetConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNatIpAddressIds': ?egressNatIpAddressIds,
      'egressNatIpAddresses': ?egressNatIpAddresses,
      'publicIpAddressIds': publicIpAddressIds,
      'publicIpAddresses': ?publicIpAddresses,
      'trustedAddressRanges': ?trustedAddressRanges,
      'vnetConfiguration': vnetConfiguration.toMap(),
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile(
      egressNatIpAddressIds: map['egressNatIpAddressIds'] == null ? null : (map['egressNatIpAddressIds'] as List).cast<String>(),
      egressNatIpAddresses: map['egressNatIpAddresses'] == null ? null : (map['egressNatIpAddresses'] as List).cast<String>(),
      publicIpAddressIds: (map['publicIpAddressIds'] as List).cast<String>(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (map['publicIpAddresses'] as List).cast<String>(),
      trustedAddressRanges: map['trustedAddressRanges'] == null ? null : (map['trustedAddressRanges'] as List).cast<String>(),
      vnetConfiguration: NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration.fromMap((map['vnetConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

