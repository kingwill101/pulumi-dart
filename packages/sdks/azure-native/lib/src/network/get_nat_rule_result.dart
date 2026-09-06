// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vpn_nat_rule_mapping_response.dart';

/// Result data returned by getNatRule.
class GetNatRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of egress VpnSiteLinkConnections.
  final List<SubResourceResponse>? egressVpnSiteLinkConnections;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The private IP address external mapping for NAT.
  final List<VpnNatRuleMappingResponse>? externalMappings;
  /// Resource ID.
  final String? id;
  /// List of ingress VpnSiteLinkConnections.
  final List<SubResourceResponse>? ingressVpnSiteLinkConnections;
  /// The private IP address internal mapping for NAT.
  final List<VpnNatRuleMappingResponse>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final String? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final String? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the NAT Rule resource.
  final String? provisioningState;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNatRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  const GetNatRuleResult({
    this.azureApiVersion,
    this.egressVpnSiteLinkConnections,
    this.etag,
    this.externalMappings,
    this.id,
    this.ingressVpnSiteLinkConnections,
    this.internalMappings,
    this.ipConfigurationId,
    this.mode,
    this.name,
    this.provisioningState,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'egressVpnSiteLinkConnections': ?(() { final guardedValue = egressVpnSiteLinkConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'externalMappings': ?(() { final guardedValue = externalMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ingressVpnSiteLinkConnections': ?(() { final guardedValue = ingressVpnSiteLinkConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'internalMappings': ?(() { final guardedValue = internalMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<VpnNatRuleMappingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
    };
  }

  factory GetNatRuleResult.fromMap(Map<String, dynamic> map) {
    return GetNatRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      egressVpnSiteLinkConnections: (() { final guardedValue = map['egressVpnSiteLinkConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalMappings: (() { final guardedValue = map['externalMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ingressVpnSiteLinkConnections: (() { final guardedValue = map['ingressVpnSiteLinkConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      internalMappings: (() { final guardedValue = map['internalMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnNatRuleMappingResponse>(guardedValue, (value) => VpnNatRuleMappingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipConfigurationId: (() { final guardedValue = map['ipConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
