// ignore_for_file: unused_element, unnecessary_cast


class VnpGatewayNatRuleInternalMapping {
  /// The string CIDR representing the address space for the VPN Gateway Nat Rule internal mapping.
  final String addressSpace;
  /// The single port range for the VPN Gateway Nat Rule internal mapping.
  final String? portRange;

  /// Creates a new [VnpGatewayNatRuleInternalMapping].
  /// [addressSpace] The string CIDR representing the address space for the VPN Gateway Nat Rule internal mapping.
  /// [portRange] The single port range for the VPN Gateway Nat Rule internal mapping.
  VnpGatewayNatRuleInternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VnpGatewayNatRuleInternalMapping.fromMap(Map<String, dynamic> map) {
    return VnpGatewayNatRuleInternalMapping(
      addressSpace: map['addressSpace'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
    );
  }
}

