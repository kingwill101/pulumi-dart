// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_authentication_parameters_response.dart';
import 'ipsec_policy_response.dart';
import 'p2_svpn_gateway_response.dart';
import 'radius_server_response.dart';
import 'vpn_server_config_radius_client_root_certificate_response.dart';
import 'vpn_server_config_radius_server_root_certificate_response.dart';
import 'vpn_server_config_vpn_client_revoked_certificate_response.dart';
import 'vpn_server_config_vpn_client_root_certificate_response.dart';
import 'vpn_server_configuration_policy_group_response.dart';

/// Parameters for VpnServerConfiguration.
class VpnServerConfigurationPropertiesResponse {
  /// The set of aad vpn authentication parameters.
  final pulumi.Input<AadAuthenticationParametersResponse>? aadAuthenticationParameters;
  /// List of all VpnServerConfigurationPolicyGroups.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroupResponse>>? configurationPolicyGroups;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The name of the VpnServerConfiguration that is unique within a resource group.
  final pulumi.Input<String>? name;
  /// List of references to P2SVpnGateways.
  final pulumi.Input<List<P2SVpnGatewayResponse>> p2SVpnGateways;
  /// The provisioning state of the VpnServerConfiguration resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// Radius client root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigRadiusClientRootCertificateResponse>>? radiusClientRootCertificates;
  /// The radius server address property of the VpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerAddress;
  /// Radius Server root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigRadiusServerRootCertificateResponse>>? radiusServerRootCertificates;
  /// The radius secret property of the VpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerSecret;
  /// Multiple Radius Server configuration for VpnServerConfiguration.
  final pulumi.Input<List<RadiusServerResponse>>? radiusServers;
  /// VPN authentication types for the VpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnAuthenticationTypes;
  /// VpnClientIpsecPolicies for VpnServerConfiguration.
  final pulumi.Input<List<IpsecPolicyResponse>>? vpnClientIpsecPolicies;
  /// VPN client revoked certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigVpnClientRevokedCertificateResponse>>? vpnClientRevokedCertificates;
  /// VPN client root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigVpnClientRootCertificateResponse>>? vpnClientRootCertificates;
  /// VPN protocols for the VpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnProtocols;

  /// Creates a new [VpnServerConfigurationPropertiesResponse].
  /// [aadAuthenticationParameters] The set of aad vpn authentication parameters.
  /// [configurationPolicyGroups] List of all VpnServerConfigurationPolicyGroups.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the VpnServerConfiguration that is unique within a resource group.
  /// [p2SVpnGateways] List of references to P2SVpnGateways.
  /// [provisioningState] The provisioning state of the VpnServerConfiguration resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [radiusClientRootCertificates] Radius client root certificate of VpnServerConfiguration.
  /// [radiusServerAddress] The radius server address property of the VpnServerConfiguration resource for point to site client connection.
  /// [radiusServerRootCertificates] Radius Server root certificate of VpnServerConfiguration.
  /// [radiusServerSecret] The radius secret property of the VpnServerConfiguration resource for point to site client connection.
  /// [radiusServers] Multiple Radius Server configuration for VpnServerConfiguration.
  /// [vpnAuthenticationTypes] VPN authentication types for the VpnServerConfiguration.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for VpnServerConfiguration.
  /// [vpnClientRevokedCertificates] VPN client revoked certificate of VpnServerConfiguration.
  /// [vpnClientRootCertificates] VPN client root certificate of VpnServerConfiguration.
  /// [vpnProtocols] VPN protocols for the VpnServerConfiguration.
  VpnServerConfigurationPropertiesResponse({
    this.aadAuthenticationParameters,
    this.configurationPolicyGroups,
    required this.etag,
    this.name,
    required this.p2SVpnGateways,
    required this.provisioningState,
    this.radiusClientRootCertificates,
    this.radiusServerAddress,
    this.radiusServerRootCertificates,
    this.radiusServerSecret,
    this.radiusServers,
    this.vpnAuthenticationTypes,
    this.vpnClientIpsecPolicies,
    this.vpnClientRevokedCertificates,
    this.vpnClientRootCertificates,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAuthenticationParameters': ?pulumi.Input.mapOptionalInputValue<AadAuthenticationParametersResponse, Map<String, dynamic>>(aadAuthenticationParameters, (value) => value.toMap()),
      'configurationPolicyGroups': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroupResponse>, List<Map<String, dynamic>>>(configurationPolicyGroups, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'name': ?name,
      'p2SVpnGateways': pulumi.Input.mapInputValue<List<P2SVpnGatewayResponse>, List<Map<String, dynamic>>>(p2SVpnGateways, (value) => pulumi.Input.encodeList<P2SVpnGatewayResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'radiusClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigRadiusClientRootCertificateResponse>, List<Map<String, dynamic>>>(radiusClientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigRadiusClientRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigRadiusServerRootCertificateResponse>, List<Map<String, dynamic>>>(radiusServerRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigRadiusServerRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?pulumi.Input.mapOptionalInputValue<List<RadiusServerResponse>, List<Map<String, dynamic>>>(radiusServers, (value) => pulumi.Input.encodeList<RadiusServerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicyResponse>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigVpnClientRevokedCertificateResponse>, List<Map<String, dynamic>>>(vpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigVpnClientRevokedCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigVpnClientRootCertificateResponse>, List<Map<String, dynamic>>>(vpnClientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigVpnClientRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory VpnServerConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationPropertiesResponse(
      aadAuthenticationParameters: map['aadAuthenticationParameters'] == null ? null : (AadAuthenticationParametersResponse.fromMap((map['aadAuthenticationParameters'] as Map).cast<String, dynamic>())).input(),
      configurationPolicyGroups: map['configurationPolicyGroups'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigurationPolicyGroupResponse>(map['configurationPolicyGroups'], (value) => VpnServerConfigurationPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: (map['etag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      p2SVpnGateways: (pulumi.Input.decodeList<P2SVpnGatewayResponse>(map['p2SVpnGateways'], (value) => P2SVpnGatewayResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      radiusClientRootCertificates: map['radiusClientRootCertificates'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigRadiusClientRootCertificateResponse>(map['radiusClientRootCertificates'], (value) => VpnServerConfigRadiusClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      radiusServerAddress: map['radiusServerAddress'] == null ? null : (map['radiusServerAddress'] as String).input(),
      radiusServerRootCertificates: map['radiusServerRootCertificates'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigRadiusServerRootCertificateResponse>(map['radiusServerRootCertificates'], (value) => VpnServerConfigRadiusServerRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      radiusServerSecret: map['radiusServerSecret'] == null ? null : (map['radiusServerSecret'] as String).input(),
      radiusServers: map['radiusServers'] == null ? null : (pulumi.Input.decodeList<RadiusServerResponse>(map['radiusServers'], (value) => RadiusServerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnAuthenticationTypes: map['vpnAuthenticationTypes'] == null ? null : ((map['vpnAuthenticationTypes'] as List).cast<String>()).input(),
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : (pulumi.Input.decodeList<IpsecPolicyResponse>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnClientRevokedCertificates: map['vpnClientRevokedCertificates'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigVpnClientRevokedCertificateResponse>(map['vpnClientRevokedCertificates'], (value) => VpnServerConfigVpnClientRevokedCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnClientRootCertificates: map['vpnClientRootCertificates'] == null ? null : (pulumi.Input.decodeList<VpnServerConfigVpnClientRootCertificateResponse>(map['vpnClientRootCertificates'], (value) => VpnServerConfigVpnClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnProtocols: map['vpnProtocols'] == null ? null : ((map['vpnProtocols'] as List).cast<String>()).input(),
    );
  }
}

