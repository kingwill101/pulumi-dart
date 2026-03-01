// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vnp_gateway_nat_rule_external_mapping.dart';
import 'vnp_gateway_nat_rule_internal_mapping.dart';

/// Input properties used for looking up and filtering VnpGatewayNatRule resources.
class VnpGatewayNatRuleState {
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
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [VnpGatewayNatRuleState].
  /// [externalMappings] One of more `external_mapping` blocks as defined below.
  /// [internalMappings] One of more `internal_mapping` blocks as defined below.
  /// [ipConfigurationId] The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`.
  /// [mode] The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created.
  /// [type] The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  /// [vpnGatewayId] The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created.
  VnpGatewayNatRuleState({
    pulumi.Output<List<VnpGatewayNatRuleExternalMapping>>? externalMappings,
    pulumi.Output<List<VnpGatewayNatRuleInternalMapping>>? internalMappings,
    pulumi.Output<String>? ipConfigurationId,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      externalMappings = pulumi.Input.asOptionalInput<List<VnpGatewayNatRuleExternalMapping>>(externalMappings),
      internalMappings = pulumi.Input.asOptionalInput<List<VnpGatewayNatRuleInternalMapping>>(internalMappings),
      ipConfigurationId = pulumi.Input.asOptionalInput<String>(ipConfigurationId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VnpGatewayNatRuleExternalMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VnpGatewayNatRuleExternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VnpGatewayNatRuleInternalMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VnpGatewayNatRuleInternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'type': ?type,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VnpGatewayNatRuleState.fromMap(Map<String, dynamic> map) {
    return VnpGatewayNatRuleState(
      externalMappings: map['externalMappings'] == null ? null : pulumi.Output.create<List<VnpGatewayNatRuleExternalMapping>>(pulumi.Input.decodeList<VnpGatewayNatRuleExternalMapping>(map['externalMappings'], (value) => VnpGatewayNatRuleExternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      internalMappings: map['internalMappings'] == null ? null : pulumi.Output.create<List<VnpGatewayNatRuleInternalMapping>>(pulumi.Input.decodeList<VnpGatewayNatRuleInternalMapping>(map['internalMappings'], (value) => VnpGatewayNatRuleInternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : pulumi.Output.create<String>(map['ipConfigurationId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}

