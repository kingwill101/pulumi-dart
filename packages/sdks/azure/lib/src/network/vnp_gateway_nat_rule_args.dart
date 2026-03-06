// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vnp_gateway_nat_rule_external_mapping.dart';
import 'vnp_gateway_nat_rule_internal_mapping.dart';

/// {@template pulumi_network_vnp_gateway_nat_rule_vnp_gateway_nat_rule_args_doc}
/// The set of arguments for VnpGatewayNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_vnp_gateway_nat_rule_vnp_gateway_nat_rule_args_doc}
class VnpGatewayNatRuleArgs {
  /// One of more `external_mapping` blocks as defined below.
  final pulumi.Input<List<VnpGatewayNatRuleExternalMapping>>? externalMappings;
  /// One of more `internal_mapping` blocks as defined below.
  final pulumi.Input<List<VnpGatewayNatRuleInternalMapping>>? internalMappings;
  /// The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`.
  final pulumi.Input<String>? ipConfigurationId;
  /// The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mode;
  /// The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [VnpGatewayNatRuleArgs].
  /// [externalMappings] One of more `external_mapping` blocks as defined below.
  /// [internalMappings] One of more `internal_mapping` blocks as defined below.
  /// [ipConfigurationId] The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`.
  /// [mode] The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created.
  /// [type] The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  /// [vpnGatewayId] The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created.
  const VnpGatewayNatRuleArgs({
    this.externalMappings,
    this.internalMappings,
    this.ipConfigurationId,
    this.mode,
    this.name,
    this.type,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VnpGatewayNatRuleExternalMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VnpGatewayNatRuleExternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VnpGatewayNatRuleInternalMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VnpGatewayNatRuleInternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'type': ?type,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory VnpGatewayNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return VnpGatewayNatRuleArgs(
      externalMappings: (() { final guardedValue = map['externalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VnpGatewayNatRuleExternalMapping>(guardedValue, (value) => VnpGatewayNatRuleExternalMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      internalMappings: (() { final guardedValue = map['internalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VnpGatewayNatRuleInternalMapping>(guardedValue, (value) => VnpGatewayNatRuleInternalMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipConfigurationId: (() { final guardedValue = map['ipConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}

