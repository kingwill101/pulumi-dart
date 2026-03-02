// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_nat_rule_mapping_response.dart';

/// VirtualNetworkGatewayNatRule Resource.
class VirtualNetworkGatewayNatRuleResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The private IP address external mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMappingResponse>>? externalMappings;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The private IP address internal mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMappingResponse>>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final pulumi.Input<String>? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final pulumi.Input<String>? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the NAT Rule resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VirtualNetworkGatewayNatRuleResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [externalMappings] The private IP address external mapping for NAT.
  /// [id] Resource ID.
  /// [internalMappings] The private IP address internal mapping for NAT.
  /// [ipConfigurationId] The IP Configuration ID this NAT rule applies to.
  /// [mode] The Source NAT direction of a VPN NAT.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the NAT Rule resource.
  /// [type] Resource type.
  VirtualNetworkGatewayNatRuleResponse({
    required this.etag,
    this.externalMappings,
    this.id,
    this.internalMappings,
    this.ipConfigurationId,
    this.mode,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMappingResponse>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMappingResponse>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VirtualNetworkGatewayNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayNatRuleResponse(
      etag: (map['etag'] as String).input(),
      externalMappings: map['externalMappings'] == null ? null : (pulumi.Input.decodeList<VpnNatRuleMappingResponse>(map['externalMappings']!, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      internalMappings: map['internalMappings'] == null ? null : (pulumi.Input.decodeList<VpnNatRuleMappingResponse>(map['internalMappings']!, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : (map['ipConfigurationId']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

