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
  NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile({
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
      egressNatIpAddressIds: map['egressNatIpAddressIds'] == null ? null : ((map['egressNatIpAddressIds']! as List).cast<String>()).input(),
      egressNatIpAddresses: map['egressNatIpAddresses'] == null ? null : ((map['egressNatIpAddresses']! as List).cast<String>()).input(),
      ipOfTrustForUserDefinedRoutes: map['ipOfTrustForUserDefinedRoutes'] == null ? null : (map['ipOfTrustForUserDefinedRoutes']! as String).input(),
      networkVirtualApplianceId: (map['networkVirtualApplianceId'] as String).input(),
      publicIpAddressIds: ((map['publicIpAddressIds'] as List).cast<String>()).input(),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : ((map['publicIpAddresses']! as List).cast<String>()).input(),
      trustedAddressRanges: map['trustedAddressRanges'] == null ? null : ((map['trustedAddressRanges']! as List).cast<String>()).input(),
      trustedSubnetId: map['trustedSubnetId'] == null ? null : (map['trustedSubnetId']! as String).input(),
      untrustedSubnetId: map['untrustedSubnetId'] == null ? null : (map['untrustedSubnetId']! as String).input(),
      virtualHubId: (map['virtualHubId'] as String).input(),
    );
  }
}

