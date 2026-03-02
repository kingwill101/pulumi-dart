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
  VpnGatewayNatRule({
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
      externalMappings: map['externalMappings'] == null ? null : (pulumi.Input.decodeList<VpnNatRuleMapping>(map['externalMappings']!, (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      internalMappings: map['internalMappings'] == null ? null : (pulumi.Input.decodeList<VpnNatRuleMapping>(map['internalMappings']!, (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : (map['ipConfigurationId']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

