// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_nat_rule_mapping_response.dart';

/// Result data returned by getVirtualNetworkGatewayNatRule.
class GetVirtualNetworkGatewayNatRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The private IP address external mapping for NAT.
  final List<VpnNatRuleMappingResponse>? externalMappings;
  /// Resource ID.
  final String? id;
  /// The private IP address internal mapping for NAT.
  final List<VpnNatRuleMappingResponse>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final String? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final String? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the NAT Rule resource.
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [GetVirtualNetworkGatewayNatRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [externalMappings] The private IP address external mapping for NAT.
  /// [id] Resource ID.
  /// [internalMappings] The private IP address internal mapping for NAT.
  /// [ipConfigurationId] The IP Configuration ID this NAT rule applies to.
  /// [mode] The Source NAT direction of a VPN NAT.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the NAT Rule resource.
  /// [type] Resource type.
  GetVirtualNetworkGatewayNatRuleResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'externalMappings': ?(() { final guardedValue = externalMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'internalMappings': ?(() { final guardedValue = internalMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetVirtualNetworkGatewayNatRuleResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayNatRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      externalMappings: (() { final guardedValue = map['externalMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalMappings: (() { final guardedValue = map['internalMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipConfigurationId: (() { final guardedValue = map['ipConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

