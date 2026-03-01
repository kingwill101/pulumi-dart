// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'ipsec_policy_response.dart';
import 'radius_server_response.dart';
import 'vng_client_connection_configuration_response.dart';
import 'vpn_client_revoked_certificate_response.dart';
import 'vpn_client_root_certificate_response.dart';

/// VpnClientConfiguration for P2S client.
class VpnClientConfigurationResponse {
  /// The AADAudience property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  final String? aadAudience;
  /// The AADIssuer property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  final String? aadIssuer;
  /// The AADTenant property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  final String? aadTenant;
  /// The radius server address property of the VirtualNetworkGateway resource for vpn client connection.
  final String? radiusServerAddress;
  /// The radius secret property of the VirtualNetworkGateway resource for vpn client connection.
  final String? radiusServerSecret;
  /// The radiusServers property for multiple radius server configuration.
  final List<RadiusServerResponse>? radiusServers;
  /// per ip address pool connection policy for virtual network gateway P2S client.
  final List<VngClientConnectionConfigurationResponse>? vngClientConnectionConfigurations;
  /// VPN authentication types for the virtual network gateway..
  final List<String>? vpnAuthenticationTypes;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final AddressSpaceResponse? vpnClientAddressPool;
  /// VpnClientIpsecPolicies for virtual network gateway P2S client.
  final List<IpsecPolicyResponse>? vpnClientIpsecPolicies;
  /// VpnClientProtocols for Virtual network gateway.
  final List<String>? vpnClientProtocols;
  /// VpnClientRevokedCertificate for Virtual network gateway.
  final List<VpnClientRevokedCertificateResponse>? vpnClientRevokedCertificates;
  /// VpnClientRootCertificate for virtual network gateway.
  final List<VpnClientRootCertificateResponse>? vpnClientRootCertificates;

  /// Creates a new [VpnClientConfigurationResponse].
  /// [aadAudience] The AADAudience property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  /// [aadIssuer] The AADIssuer property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  /// [aadTenant] The AADTenant property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  /// [radiusServerAddress] The radius server address property of the VirtualNetworkGateway resource for vpn client connection.
  /// [radiusServerSecret] The radius secret property of the VirtualNetworkGateway resource for vpn client connection.
  /// [radiusServers] The radiusServers property for multiple radius server configuration.
  /// [vngClientConnectionConfigurations] per ip address pool connection policy for virtual network gateway P2S client.
  /// [vpnAuthenticationTypes] VPN authentication types for the virtual network gateway..
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for virtual network gateway P2S client.
  /// [vpnClientProtocols] VpnClientProtocols for Virtual network gateway.
  /// [vpnClientRevokedCertificates] VpnClientRevokedCertificate for Virtual network gateway.
  /// [vpnClientRootCertificates] VpnClientRootCertificate for virtual network gateway.
  VpnClientConfigurationResponse({
    this.aadAudience,
    this.aadIssuer,
    this.aadTenant,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.radiusServers,
    this.vngClientConnectionConfigurations,
    this.vpnAuthenticationTypes,
    this.vpnClientAddressPool,
    this.vpnClientIpsecPolicies,
    this.vpnClientProtocols,
    this.vpnClientRevokedCertificates,
    this.vpnClientRootCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAudience': ?aadAudience,
      'aadIssuer': ?aadIssuer,
      'aadTenant': ?aadTenant,
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?radiusServers == null ? null : pulumi.Input.encodeList<RadiusServerResponse, Map<String, dynamic>>(radiusServers!, (value) => value.toMap()),
      'vngClientConnectionConfigurations': ?vngClientConnectionConfigurations == null ? null : pulumi.Input.encodeList<VngClientConnectionConfigurationResponse, Map<String, dynamic>>(vngClientConnectionConfigurations!, (value) => value.toMap()),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientAddressPool': ?vpnClientAddressPool == null ? null : vpnClientAddressPool!.toMap(),
      'vpnClientIpsecPolicies': ?vpnClientIpsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(vpnClientIpsecPolicies!, (value) => value.toMap()),
      'vpnClientProtocols': ?vpnClientProtocols,
      'vpnClientRevokedCertificates': ?vpnClientRevokedCertificates == null ? null : pulumi.Input.encodeList<VpnClientRevokedCertificateResponse, Map<String, dynamic>>(vpnClientRevokedCertificates!, (value) => value.toMap()),
      'vpnClientRootCertificates': ?vpnClientRootCertificates == null ? null : pulumi.Input.encodeList<VpnClientRootCertificateResponse, Map<String, dynamic>>(vpnClientRootCertificates!, (value) => value.toMap()),
    };
  }

  factory VpnClientConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientConfigurationResponse(
      aadAudience: map['aadAudience'] == null ? null : map['aadAudience'] as String,
      aadIssuer: map['aadIssuer'] == null ? null : map['aadIssuer'] as String,
      aadTenant: map['aadTenant'] == null ? null : map['aadTenant'] as String,
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      radiusServers: map['radiusServers'] == null ? null : pulumi.Input.decodeList<RadiusServerResponse>(map['radiusServers'], (value) => RadiusServerResponse.fromMap((value as Map).cast<String, dynamic>())),
      vngClientConnectionConfigurations: map['vngClientConnectionConfigurations'] == null ? null : pulumi.Input.decodeList<VngClientConnectionConfigurationResponse>(map['vngClientConnectionConfigurations'], (value) => VngClientConnectionConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnAuthenticationTypes: map['vpnAuthenticationTypes'] == null ? null : (map['vpnAuthenticationTypes'] as List).cast<String>(),
      vpnClientAddressPool: map['vpnClientAddressPool'] == null ? null : AddressSpaceResponse.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicyResponse>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientProtocols: map['vpnClientProtocols'] == null ? null : (map['vpnClientProtocols'] as List).cast<String>(),
      vpnClientRevokedCertificates: map['vpnClientRevokedCertificates'] == null ? null : pulumi.Input.decodeList<VpnClientRevokedCertificateResponse>(map['vpnClientRevokedCertificates'], (value) => VpnClientRevokedCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientRootCertificates: map['vpnClientRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnClientRootCertificateResponse>(map['vpnClientRootCertificates'], (value) => VpnClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

