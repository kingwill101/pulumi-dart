// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_strata_cloud_manager_network_profile_vnet_configuration.dart';

class NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile {
  /// A list of Azure Public IP Address IDs that can be used for Egress (Source) Network Address Translation.
  final pulumi.Input<List<String>>? egressNatIpAddressIds;
  /// A list of Egress NAT IP addresses.
  final pulumi.Input<List<String>>? egressNatIpAddresses;
  /// A list of Azure Public IP Address IDs.
  final pulumi.Input<List<String>> publicIpAddressIds;
  /// A list of public IPs associated with this Next Generation Firewall.
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// A list of trusted ranges to use for the Network.
  final pulumi.Input<List<String>>? trustedAddressRanges;
  /// A `vnet_configuration` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration> vnetConfiguration;

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
      'vnetConfiguration': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration, Map<String, dynamic>>(vnetConfiguration, (value) => value.toMap()),
    };
  }

  factory NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfile(
      egressNatIpAddressIds: (() { final guardedValue = map['egressNatIpAddressIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      egressNatIpAddresses: (() { final guardedValue = map['egressNatIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicIpAddressIds: pulumi.Input.fromValue((map['publicIpAddressIds'] as List).cast<String>()),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedAddressRanges: (() { final guardedValue = map['trustedAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vnetConfiguration: pulumi.Input.fromValue(NextGenerationFirewallVirtualNetworkStrataCloudManagerNetworkProfileVnetConfiguration.fromMap((map['vnetConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

