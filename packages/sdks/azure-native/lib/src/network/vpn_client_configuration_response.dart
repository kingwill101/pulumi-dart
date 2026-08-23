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
  final pulumi.Input<String>? aadAudience;
  /// The AADIssuer property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  final pulumi.Input<String>? aadIssuer;
  /// The AADTenant property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication.
  final pulumi.Input<String>? aadTenant;
  /// The radius server address property of the VirtualNetworkGateway resource for vpn client connection.
  final pulumi.Input<String>? radiusServerAddress;
  /// The radius secret property of the VirtualNetworkGateway resource for vpn client connection.
  final pulumi.Input<String>? radiusServerSecret;
  /// The radiusServers property for multiple radius server configuration.
  final pulumi.Input<List<RadiusServerResponse>>? radiusServers;
  /// per ip address pool connection policy for virtual network gateway P2S client.
  final pulumi.Input<List<VngClientConnectionConfigurationResponse>>? vngClientConnectionConfigurations;
  /// VPN authentication types for the virtual network gateway..
  final pulumi.Input<List<String>>? vpnAuthenticationTypes;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpaceResponse>? vpnClientAddressPool;
  /// VpnClientIpsecPolicies for virtual network gateway P2S client.
  final pulumi.Input<List<IpsecPolicyResponse>>? vpnClientIpsecPolicies;
  /// VpnClientProtocols for Virtual network gateway.
  final pulumi.Input<List<String>>? vpnClientProtocols;
  /// VpnClientRevokedCertificate for Virtual network gateway.
  final pulumi.Input<List<VpnClientRevokedCertificateResponse>>? vpnClientRevokedCertificates;
  /// VpnClientRootCertificate for virtual network gateway.
  final pulumi.Input<List<VpnClientRootCertificateResponse>>? vpnClientRootCertificates;

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
  const VpnClientConfigurationResponse({
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
      'radiusServers': ?pulumi.Input.mapOptionalInputValue<List<RadiusServerResponse>, List<Map<String, dynamic>>>(radiusServers, (value) => pulumi.Input.encodeList<RadiusServerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vngClientConnectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VngClientConnectionConfigurationResponse>, List<Map<String, dynamic>>>(vngClientConnectionConfigurations, (value) => pulumi.Input.encodeList<VngClientConnectionConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientAddressPool': ?pulumi.Input.mapOptionalInputValue<AddressSpaceResponse, Map<String, dynamic>>(vpnClientAddressPool, (value) => value.toMap()),
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicyResponse>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientProtocols': ?vpnClientProtocols,
      'vpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnClientRevokedCertificateResponse>, List<Map<String, dynamic>>>(vpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<VpnClientRevokedCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnClientRootCertificateResponse>, List<Map<String, dynamic>>>(vpnClientRootCertificates, (value) => pulumi.Input.encodeList<VpnClientRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnClientConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientConfigurationResponse(
      aadAudience: (() { final guardedValue = map['aadAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadIssuer: (() { final guardedValue = map['aadIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadTenant: (() { final guardedValue = map['aadTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerAddress: (() { final guardedValue = map['radiusServerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerSecret: (() { final guardedValue = map['radiusServerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServers: (() { final guardedValue = map['radiusServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RadiusServerResponse>(guardedValue, (value) => RadiusServerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vngClientConnectionConfigurations: (() { final guardedValue = map['vngClientConnectionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VngClientConnectionConfigurationResponse>(guardedValue, (value) => VngClientConnectionConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnAuthenticationTypes: (() { final guardedValue = map['vpnAuthenticationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnClientAddressPool: (() { final guardedValue = map['vpnClientAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnClientIpsecPolicies: (() { final guardedValue = map['vpnClientIpsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientProtocols: (() { final guardedValue = map['vpnClientProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnClientRevokedCertificates: (() { final guardedValue = map['vpnClientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnClientRevokedCertificateResponse>(guardedValue, (value) => VpnClientRevokedCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientRootCertificates: (() { final guardedValue = map['vpnClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnClientRootCertificateResponse>(guardedValue, (value) => VpnClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
