// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Vpn NatRule mapping.
class VpnNatRuleMappingResponse {
  /// Address space for Vpn NatRule mapping.
  final pulumi.Input<String>? addressSpace;
  /// Port range for Vpn NatRule mapping.
  final pulumi.Input<String>? portRange;

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
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

