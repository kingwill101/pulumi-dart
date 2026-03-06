// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vpn_nat_rule_mapping_response.dart';

/// VpnGatewayNatRule Resource.
class VpnGatewayNatRuleResponse {
  /// List of egress VpnSiteLinkConnections.
  final pulumi.Input<List<SubResourceResponse>> egressVpnSiteLinkConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The private IP address external mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMappingResponse>>? externalMappings;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// List of ingress VpnSiteLinkConnections.
  final pulumi.Input<List<SubResourceResponse>> ingressVpnSiteLinkConnections;
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

  /// Creates a new [VpnGatewayNatRuleResponse].
  /// [egressVpnSiteLinkConnections] List of egress VpnSiteLinkConnections.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [externalMappings] The private IP address external mapping for NAT.
  /// [id] Resource ID.
  /// [ingressVpnSiteLinkConnections] List of ingress VpnSiteLinkConnections.
  /// [internalMappings] The private IP address internal mapping for NAT.
  /// [ipConfigurationId] The IP Configuration ID this NAT rule applies to.
  /// [mode] The Source NAT direction of a VPN NAT.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the NAT Rule resource.
  /// [type] Resource type.
  const VpnGatewayNatRuleResponse({
    required this.egressVpnSiteLinkConnections,
    required this.etag,
    this.externalMappings,
    this.id,
    required this.ingressVpnSiteLinkConnections,
    this.internalMappings,
    this.ipConfigurationId,
    this.mode,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressVpnSiteLinkConnections': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(egressVpnSiteLinkConnections, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMappingResponse>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ingressVpnSiteLinkConnections': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(ingressVpnSiteLinkConnections, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMappingResponse>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VpnGatewayNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return VpnGatewayNatRuleResponse(
      egressVpnSiteLinkConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['egressVpnSiteLinkConnections']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      externalMappings: (() { final guardedValue = map['externalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingressVpnSiteLinkConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['ingressVpnSiteLinkConnections']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      internalMappings: (() { final guardedValue = map['internalMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipConfigurationId: (() { final guardedValue = map['ipConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

