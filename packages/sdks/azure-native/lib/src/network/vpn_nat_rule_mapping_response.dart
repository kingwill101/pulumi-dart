// ignore_for_file: unused_element, unnecessary_cast


/// Vpn NatRule mapping.
class VpnNatRuleMappingResponse {
  /// Address space for Vpn NatRule mapping.
  final String? addressSpace;
  /// Port range for Vpn NatRule mapping.
  final String? portRange;

  /// Creates a new [VpnNatRuleMappingResponse].
  /// [addressSpace] Address space for Vpn NatRule mapping.
  /// [portRange] Port range for Vpn NatRule mapping.
  VpnNatRuleMappingResponse({
    this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VpnNatRuleMappingResponse.fromMap(Map<String, dynamic> map) {
    return VpnNatRuleMappingResponse(
      addressSpace: map['addressSpace'] == null ? null : map['addressSpace'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
    );
  }
}

