// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_nat_rule_external_mapping.dart';
import 'virtual_network_gateway_nat_rule_internal_mapping.dart';

/// Input properties used for looking up and filtering VirtualNetworkGatewayNatRule resources.
class VirtualNetworkGatewayNatRuleState {
  /// One or more `external_mapping` blocks as documented below.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleExternalMapping>>? externalMappings;
  /// One or more `internal_mapping` blocks as documented below.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleInternalMapping>>? internalMappings;
  /// The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to.
  final pulumi.Input<String>? ipConfigurationId;
  /// The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mode;
  /// The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayNatRuleState].
  /// [externalMappings] One or more `external_mapping` blocks as documented below.
  /// [internalMappings] One or more `internal_mapping` blocks as documented below.
  /// [ipConfigurationId] The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to.
  /// [mode] The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created.
  /// [type] The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  /// [virtualNetworkGatewayId] The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created.
  VirtualNetworkGatewayNatRuleState({
    pulumi.Output<List<VirtualNetworkGatewayNatRuleExternalMapping>>? externalMappings,
    pulumi.Output<List<VirtualNetworkGatewayNatRuleInternalMapping>>? internalMappings,
    pulumi.Output<String>? ipConfigurationId,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? virtualNetworkGatewayId,
  }) :
      externalMappings = pulumi.Input.asOptionalInput<List<VirtualNetworkGatewayNatRuleExternalMapping>>(externalMappings),
      internalMappings = pulumi.Input.asOptionalInput<List<VirtualNetworkGatewayNatRuleInternalMapping>>(internalMappings),
      ipConfigurationId = pulumi.Input.asOptionalInput<String>(ipConfigurationId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type),
      virtualNetworkGatewayId = pulumi.Input.asOptionalInput<String>(virtualNetworkGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayNatRuleExternalMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleExternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayNatRuleInternalMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleInternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'type': ?type,
      'virtualNetworkGatewayId': ?virtualNetworkGatewayId,
    };
  }

  factory VirtualNetworkGatewayNatRuleState.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayNatRuleState(
      externalMappings: map['externalMappings'] == null ? null : pulumi.Output.create<List<VirtualNetworkGatewayNatRuleExternalMapping>>(pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleExternalMapping>(map['externalMappings'], (value) => VirtualNetworkGatewayNatRuleExternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      internalMappings: map['internalMappings'] == null ? null : pulumi.Output.create<List<VirtualNetworkGatewayNatRuleInternalMapping>>(pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleInternalMapping>(map['internalMappings'], (value) => VirtualNetworkGatewayNatRuleInternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : pulumi.Output.create<String>(map['ipConfigurationId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      virtualNetworkGatewayId: map['virtualNetworkGatewayId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkGatewayId'] as String),
    );
  }
}

