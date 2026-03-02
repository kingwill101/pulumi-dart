// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayNatRuleInternalMapping {
  /// The string CIDR representing the address space for the Virtual Network Gateway Nat Rule internal mapping.
  final pulumi.Input<String> addressSpace;
  /// The single port range for the Virtual Network Gateway Nat Rule internal mapping.
  final pulumi.Input<String>? portRange;

  /// Creates a new [VirtualNetworkGatewayNatRuleInternalMapping].
  /// [addressSpace] The string CIDR representing the address space for the Virtual Network Gateway Nat Rule internal mapping.
  /// [portRange] The single port range for the Virtual Network Gateway Nat Rule internal mapping.
  VirtualNetworkGatewayNatRuleInternalMapping({
    required this.addressSpace,
    this.portRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': addressSpace,
      'portRange': ?portRange,
    };
  }

  factory VirtualNetworkGatewayNatRuleInternalMapping.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayNatRuleInternalMapping(
      addressSpace: (map['addressSpace'] as String).input(),
      portRange: map['portRange'] == null ? null : (map['portRange']! as String).input(),
    );
  }
}

