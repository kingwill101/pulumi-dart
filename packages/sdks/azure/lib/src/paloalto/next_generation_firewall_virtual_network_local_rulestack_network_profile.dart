// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_local_rulestack_network_profile_vnet_configuration.dart';

class NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile {
  /// Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  final pulumi.Input<List<String>>? egressNatIpAddressIds;
  final pulumi.Input<List<String>>? egressNatIpAddresses;
  /// Specifies a list of Azure Public IP Address IDs.
  final pulumi.Input<List<String>> publicIpAddressIds;
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// Specifies a list of trusted ranges to use for the Network.
  final pulumi.Input<List<String>>? trustedAddressRanges;
  /// A `vnet_configuration` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration> vnetConfiguration;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile].
  /// [egressNatIpAddressIds] Specifies a list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  /// [egressNatIpAddresses] Optional.
  /// [publicIpAddressIds] Specifies a list of Azure Public IP Address IDs.
  /// [publicIpAddresses] Optional.
  /// [trustedAddressRanges] Specifies a list of trusted ranges to use for the Network.
  /// [vnetConfiguration] A `vnet_configuration` block as defined below.
  NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile({
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
      'vnetConfiguration': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration, Map<String, dynamic>>(vnetConfiguration, (value) => value.toMap()),
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile(
      egressNatIpAddressIds: map['egressNatIpAddressIds'] == null ? null : ((map['egressNatIpAddressIds']! as List).cast<String>()).input(),
      egressNatIpAddresses: map['egressNatIpAddresses'] == null ? null : ((map['egressNatIpAddresses']! as List).cast<String>()).input(),
      publicIpAddressIds: ((map['publicIpAddressIds'] as List).cast<String>()).input(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : ((map['publicIpAddresses']! as List).cast<String>()).input(),
      trustedAddressRanges: map['trustedAddressRanges'] == null ? null : ((map['trustedAddressRanges']! as List).cast<String>()).input(),
      vnetConfiguration: (NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration.fromMap((map['vnetConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

