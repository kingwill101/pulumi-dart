// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualHubPanoramaNetworkProfile {
  /// Specifies a list of Public IP IDs to use for Egress NAT.
  final pulumi.Input<List<String>?>? egressNatIpAddressIds;
  final pulumi.Input<List<String>?>? egressNatIpAddresses;
  final pulumi.Input<String?>? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String> networkVirtualApplianceId;
  /// Specifies a list of Public IP IDs to use for this Next Generation Firewall.
  final pulumi.Input<List<String>> publicIpAddressIds;
  final pulumi.Input<List<String>?>? publicIpAddresses;
  /// Specifies a list of trusted ranges to use for the Network.
  final pulumi.Input<List<String>?>? trustedAddressRanges;
  final pulumi.Input<String?>? trustedSubnetId;
  final pulumi.Input<String?>? untrustedSubnetId;
  /// The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaNetworkProfile].
  /// [egressNatIpAddressIds] Specifies a list of Public IP IDs to use for Egress NAT.
  /// [egressNatIpAddresses] Optional.
  /// [ipOfTrustForUserDefinedRoutes] Optional.
  /// [networkVirtualApplianceId] The ID of the Palo Alto Network Virtual Appliance in the VHub. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [publicIpAddressIds] Specifies a list of Public IP IDs to use for this Next Generation Firewall.
  /// [publicIpAddresses] Optional.
  /// [trustedAddressRanges] Specifies a list of trusted ranges to use for the Network.
  /// [trustedSubnetId] Optional.
  /// [untrustedSubnetId] Optional.
  /// [virtualHubId] The ID of the Virtual Hub this Next generation Fireall will be deployed in. Changing this forces a new Palo Alto Next Generation Firewall VHub Local Rulestack to be created.
  const NextGenerationFirewallVirtualHubPanoramaNetworkProfile({
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

  factory NextGenerationFirewallVirtualHubPanoramaNetworkProfile.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaNetworkProfile(
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
