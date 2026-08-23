// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_nat_rule_mapping.dart';

/// VpnGatewayNatRule Resource.
class VpnGatewayNatRule {
  /// The private IP address external mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMapping>>? externalMappings;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The private IP address internal mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMapping>>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final pulumi.Input<String>? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final pulumi.Input<String>? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The type of NAT rule for VPN NAT.
  final pulumi.Input<String>? type;

  /// Creates a new [VpnGatewayNatRule].
  /// [externalMappings] The private IP address external mapping for NAT.
  /// [id] Resource ID.
  /// [internalMappings] The private IP address internal mapping for NAT.
  /// [ipConfigurationId] The IP Configuration ID this NAT rule applies to.
  /// [mode] The Source NAT direction of a VPN NAT.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [type] The type of NAT rule for VPN NAT.
  const VpnGatewayNatRule({
    this.externalMappings,
    this.id,
    this.internalMappings,
    this.ipConfigurationId,
    this.mode,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'type': ?type,
    };
  }

  factory VpnGatewayNatRule.fromMap(Map<String, dynamic> map) {
    return VpnGatewayNatRule(
      externalMappings: (() { final guardedValue = map['externalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnNatRuleMapping>(guardedValue, (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalMappings: (() { final guardedValue = map['internalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnNatRuleMapping>(guardedValue, (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipConfigurationId: (() { final guardedValue = map['ipConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
