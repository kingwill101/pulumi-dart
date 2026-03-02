// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration {
  final pulumi.Input<String>? ipOfTrustForUserDefinedRoutes;
  /// The ID of the Trust subnet.
  final pulumi.Input<String>? trustedSubnetId;
  /// The ID of the UnTrust subnet.
  final pulumi.Input<String>? untrustedSubnetId;
  /// The ID of the Virtual Network.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration].
  /// [ipOfTrustForUserDefinedRoutes] Optional.
  /// [trustedSubnetId] The ID of the Trust subnet.
  /// [untrustedSubnetId] The ID of the UnTrust subnet.
  /// [virtualNetworkId] The ID of the Virtual Network.
  NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration({
    this.ipOfTrustForUserDefinedRoutes,
    this.trustedSubnetId,
    this.untrustedSubnetId,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustForUserDefinedRoutes': ?ipOfTrustForUserDefinedRoutes,
      'trustedSubnetId': ?trustedSubnetId,
      'untrustedSubnetId': ?untrustedSubnetId,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration(
      ipOfTrustForUserDefinedRoutes: map['ipOfTrustForUserDefinedRoutes'] == null ? null : (map['ipOfTrustForUserDefinedRoutes']! as String).input(),
      trustedSubnetId: map['trustedSubnetId'] == null ? null : (map['trustedSubnetId']! as String).input(),
      untrustedSubnetId: map['untrustedSubnetId'] == null ? null : (map['untrustedSubnetId']! as String).input(),
      virtualNetworkId: (map['virtualNetworkId'] as String).input(),
    );
  }
}

