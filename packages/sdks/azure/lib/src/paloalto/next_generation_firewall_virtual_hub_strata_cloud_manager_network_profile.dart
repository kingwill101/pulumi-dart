// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile {
  /// A list of Public IP IDs to use for Egress NAT.
  final pulumi.Input<List<String>>? egressNatIpAddressIds;
  /// A list of Egress NAT IP addresses.
  final pulumi.Input<List<String>>? egressNatIpAddresses;
  /// The IP of trusted subnet for UDR.
  final pulumi.Input<String>? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String> networkVirtualApplianceId;
  /// A list of Public IP IDs to use for this Next Generation Firewall.
  final pulumi.Input<List<String>> publicIpAddressIds;
  /// A list of public IPs associated with this Next Generation Firewall.
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// A list of trusted ranges to use for the Network.
  final pulumi.Input<List<String>>? trustedAddressRanges;
  /// The ID of trusted subnet.
  final pulumi.Input<String>? trustedSubnetId;
  /// The ID of untrusted subnet.
  final pulumi.Input<String>? untrustedSubnetId;
  /// The ID of the Virtual Hub this Next Generation Firewall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile].
  /// [egressNatIpAddressIds] A list of Public IP IDs to use for Egress NAT.
  /// [egressNatIpAddresses] A list of Egress NAT IP addresses.
  /// [ipOfTrustForUserDefinedRoutes] The IP of trusted subnet for UDR.
  /// [networkVirtualApplianceId] The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  /// [publicIpAddressIds] A list of Public IP IDs to use for this Next Generation Firewall.
  /// [publicIpAddresses] A list of public IPs associated with this Next Generation Firewall.
  /// [trustedAddressRanges] A list of trusted ranges to use for the Network.
  /// [trustedSubnetId] The ID of trusted subnet.
  /// [untrustedSubnetId] The ID of untrusted subnet.
  /// [virtualHubId] The ID of the Virtual Hub this Next Generation Firewall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  const NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile({
    this.egressNatIpAddressIds,
    this.egressNatIpAddresses,
    this.ipOfTrustForUserDefinedRoutes,
    required this.networkVirtualApplianceId,
    required this.publicIpAddressIds,
    this.publicIpAddresses,
    this.trustedAddressRanges,
    this.trustedSubnetId,
    this.untrustedSubnetId,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNatIpAddressIds': ?egressNatIpAddressIds,
      'egressNatIpAddresses': ?egressNatIpAddresses,
      'ipOfTrustForUserDefinedRoutes': ?ipOfTrustForUserDefinedRoutes,
      'networkVirtualApplianceId': networkVirtualApplianceId,
      'publicIpAddressIds': publicIpAddressIds,
      'publicIpAddresses': ?publicIpAddresses,
      'trustedAddressRanges': ?trustedAddressRanges,
      'trustedSubnetId': ?trustedSubnetId,
      'untrustedSubnetId': ?untrustedSubnetId,
      'virtualHubId': virtualHubId,
    };
  }

  factory NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile(
      egressNatIpAddressIds: (() { final guardedValue = map['egressNatIpAddressIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      egressNatIpAddresses: (() { final guardedValue = map['egressNatIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipOfTrustForUserDefinedRoutes: (() { final guardedValue = map['ipOfTrustForUserDefinedRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkVirtualApplianceId: pulumi.Input.fromValue(map['networkVirtualApplianceId'] as String),
      publicIpAddressIds: pulumi.Input.fromValue((map['publicIpAddressIds'] as List).cast<String>()),
      publicIpAddresses: (() { final guardedValue = map['publicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedAddressRanges: (() { final guardedValue = map['trustedAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedSubnetId: (() { final guardedValue = map['trustedSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      untrustedSubnetId: (() { final guardedValue = map['untrustedSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualHubId: pulumi.Input.fromValue(map['virtualHubId'] as String),
    );
  }
}
