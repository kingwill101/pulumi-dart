// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnSiteLinkBgp {
  /// The BGP speaker's ASN.
  final pulumi.Input<int> asn;
  /// The BGP peering IP address.
  final pulumi.Input<String> peeringAddress;

  /// Creates a new [VpnSiteLinkBgp].
  /// [asn] The BGP speaker's ASN.
  /// [peeringAddress] The BGP peering IP address.
  const VpnSiteLinkBgp({
    required this.asn,
    required this.peeringAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'peeringAddress': peeringAddress,
    };
  }

  factory VpnSiteLinkBgp.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkBgp(
      asn: pulumi.Input.fromValue(map['asn'] as int),
      peeringAddress: pulumi.Input.fromValue(map['peeringAddress'] as String),
    );
  }
}
