// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_nat_rule_external_mapping.dart';
import 'virtual_network_gateway_nat_rule_internal_mapping.dart';

/// {@template pulumi_network_virtual_network_gateway_nat_rule_virtual_network_gateway_nat_rule_args_doc}
/// The set of arguments for VirtualNetworkGatewayNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_nat_rule_virtual_network_gateway_nat_rule_args_doc}
class VirtualNetworkGatewayNatRuleArgs {
  /// One or more `external_mapping` blocks as documented below.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleExternalMapping>> externalMappings;
  /// One or more `internal_mapping` blocks as documented below.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleInternalMapping>> internalMappings;
  /// The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to.
  final pulumi.Input<String>? ipConfigurationId;
  /// The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mode;
  /// The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayNatRuleArgs].
  /// [externalMappings] One or more `external_mapping` blocks as documented below.
  /// [internalMappings] One or more `internal_mapping` blocks as documented below.
  /// [ipConfigurationId] The ID of the IP Configuration this Virtual Network Gateway Nat Rule applies to.
  /// [mode] The source Nat direction of the Virtual Network Gateway Nat. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Virtual Network Gateway Nat Rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The Name of the Resource Group in which this Virtual Network Gateway Nat Rule should be created. Changing this forces a new resource to be created.
  /// [type] The type of the Virtual Network Gateway Nat Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  /// [virtualNetworkGatewayId] The ID of the Virtual Network Gateway that this Virtual Network Gateway Nat Rule belongs to. Changing this forces a new resource to be created.
  VirtualNetworkGatewayNatRuleArgs({
    required pulumi.Output<List<VirtualNetworkGatewayNatRuleExternalMapping>> externalMappings,
    required pulumi.Output<List<VirtualNetworkGatewayNatRuleInternalMapping>> internalMappings,
    pulumi.Output<String>? ipConfigurationId,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? type,
    required pulumi.Output<String> virtualNetworkGatewayId,
  }) :
      externalMappings = pulumi.Input.asInput<List<VirtualNetworkGatewayNatRuleExternalMapping>>(externalMappings),
      internalMappings = pulumi.Input.asInput<List<VirtualNetworkGatewayNatRuleInternalMapping>>(internalMappings),
      ipConfigurationId = pulumi.Input.asOptionalInput<String>(ipConfigurationId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type),
      virtualNetworkGatewayId = pulumi.Input.asInput<String>(virtualNetworkGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': pulumi.Input.mapInputValue<List<VirtualNetworkGatewayNatRuleExternalMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleExternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalMappings': pulumi.Input.mapInputValue<List<VirtualNetworkGatewayNatRuleInternalMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleInternalMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'type': ?type,
      'virtualNetworkGatewayId': virtualNetworkGatewayId,
    };
  }

  factory VirtualNetworkGatewayNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayNatRuleArgs(
      externalMappings: pulumi.Output.create<List<VirtualNetworkGatewayNatRuleExternalMapping>>(pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleExternalMapping>(map['externalMappings'], (value) => VirtualNetworkGatewayNatRuleExternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      internalMappings: pulumi.Output.create<List<VirtualNetworkGatewayNatRuleInternalMapping>>(pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleInternalMapping>(map['internalMappings'], (value) => VirtualNetworkGatewayNatRuleInternalMapping.fromMap((value as Map).cast<String, dynamic>()))),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : pulumi.Output.create<String>(map['ipConfigurationId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      virtualNetworkGatewayId: pulumi.Output.create<String>(map['virtualNetworkGatewayId'] as String),
    );
  }
}

