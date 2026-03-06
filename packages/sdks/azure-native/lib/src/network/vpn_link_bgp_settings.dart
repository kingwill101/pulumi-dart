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
  const VpnLinkBgpSettings({
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
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      bgpPeeringAddress: (() { final guardedValue = map['bgpPeeringAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

