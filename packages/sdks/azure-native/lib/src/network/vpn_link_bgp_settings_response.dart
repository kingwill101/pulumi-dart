// ignore_for_file: unused_element, unnecessary_cast


/// BGP settings details for a link.
class VpnLinkBgpSettingsResponse {
  /// The BGP speaker's ASN.
  final double? asn;
  /// The BGP peering address and BGP identifier of this BGP speaker.
  final String? bgpPeeringAddress;

  /// Creates a new [VpnLinkBgpSettingsResponse].
  /// [asn] The BGP speaker's ASN.
  /// [bgpPeeringAddress] The BGP peering address and BGP identifier of this BGP speaker.
  VpnLinkBgpSettingsResponse({
    this.asn,
    this.bgpPeeringAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeeringAddress': ?bgpPeeringAddress,
    };
  }

  factory VpnLinkBgpSettingsResponse.fromMap(Map<String, dynamic> map) {
    return VpnLinkBgpSettingsResponse(
      asn: map['asn'] == null ? null : map['asn'] as double,
      bgpPeeringAddress: map['bgpPeeringAddress'] == null ? null : map['bgpPeeringAddress'] as String,
    );
  }
}

