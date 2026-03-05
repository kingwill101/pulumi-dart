// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_network_profile_vnet_configuration.dart';

class NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile {
  /// Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  final pulumi.Input<List<String>>? egressNatIpAddressIds;
  final pulumi.Input<List<String>>? egressNatIpAddresses;
  /// Specifies a list of Azure Public IP Address IDs.
  final pulumi.Input<List<String>> publicIpAddressIds;
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// Specifies a list of trusted ranges to use for the Network.
  final pulumi.Input<List<String>>? trustedAddressRanges;
  /// A `vnet_configuration` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfiguration> vnetConfiguration;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile].
  /// [egressNatIpAddressIds] Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  /// [egressNatIpAddresses] Optional.
  /// [publicIpAddressIds] Specifies a list of Azure Public IP Address IDs.
  /// [publicIpAddresses] Optional.
  /// [trustedAddressRanges] Specifies a list of trusted ranges to use for the Network.
  /// [vnetConfiguration] A `vnet_configuration` block as defined below.
  NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile({
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
      'vnetConfiguration': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfiguration, Map<String, dynamic>>(vnetConfiguration, (value) => value.toMap()),
    };
  }

  factory NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile(
      egressNatIpAddressIds: (() { final guardedValue = map['egressNatIpAddressIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      egressNatIpAddresses: (() { final guardedValue = map['egressNatIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicIpAddressIds: pulumi.Input.fromValue((map['publicIpAddressIds'] as List).cast<String>()),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedAddressRanges: (() { final guardedValue = map['trustedAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vnetConfiguration: pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfiguration.fromMap((map['vnetConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

