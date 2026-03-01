// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_nat_rule_mapping.dart';

/// VpnGatewayNatRule Resource.
class VpnGatewayNatRule {
  /// The private IP address external mapping for NAT.
  final List<VpnNatRuleMapping>? externalMappings;
  /// Resource ID.
  final String? id;
  /// The private IP address internal mapping for NAT.
  final List<VpnNatRuleMapping>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final String? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final String? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The type of NAT rule for VPN NAT.
  final String? type;

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
      'externalMappings': ?externalMappings == null ? null : pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(externalMappings!, (value) => value.toMap()),
      'id': ?id,
      'internalMappings': ?internalMappings == null ? null : pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(internalMappings!, (value) => value.toMap()),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'type': ?type,
    };
  }

  factory VpnGatewayNatRule.fromMap(Map<String, dynamic> map) {
    return VpnGatewayNatRule(
      externalMappings: map['externalMappings'] == null ? null : pulumi.Input.decodeList<VpnNatRuleMapping>(map['externalMappings'], (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      internalMappings: map['internalMappings'] == null ? null : pulumi.Input.decodeList<VpnNatRuleMapping>(map['internalMappings'], (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>())),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : map['ipConfigurationId'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

