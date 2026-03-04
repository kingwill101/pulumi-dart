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

  factory NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfiguration(
      ipOfTrustForUserDefinedRoutes: (() {
        final guardedValue = map['ipOfTrustForUserDefinedRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trustedSubnetId: (() {
        final guardedValue = map['trustedSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      untrustedSubnetId: (() {
        final guardedValue = map['untrustedSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualNetworkId: pulumi.Input.fromValue(
        map['virtualNetworkId'] as String,
      ),
    );
  }
}
