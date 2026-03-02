// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BGP settings details for a link.
class VpnLinkBgpSettings {
  /// The BGP speaker's ASN.
  final pulumi.Input<double>? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final pulumi.Input<String>? bgpPeeringAddress;

  /// Creates a new [VpnLinkBgpSettings].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  VpnLinkBgpSettings({
    this.asn,
    this.bgpPeeringAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
    };
  }

  factory VpnLinkBgpSettings.fromMap(Map<String, dynamic> map) {
    return VpnLinkBgpSettings(
      asn: map['asn'] == null ? null : (map['asn']! as double).input(),
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : (map['bgpPeeringAddress']! as String).input(),
    );
  }
}

