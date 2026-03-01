// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'ipsec_policy.dart';
import 'radius_server.dart';
import 'vng_client_connection_configuration.dart';
import 'vpn_client_revoked_certificate.dart';
import 'vpn_client_root_certificate.dart';

/// VpnClientConfiguration for P2S client.
class VpnClientConfiguration {
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
  final List<RadiusServer>? radiusServers;
  /// per ip address pool connection policy for virtual network gateway P2S client.
  final List<VngClientConnectionConfiguration>? vngClientConnectionConfigurations;
  /// VPN authentication types for the virtual network gateway..
  final List<String>? vpnAuthenticationTypes;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final AddressSpace? vpnClientAddressPool;
  /// VpnClientIpsecPolicies for virtual network gateway P2S client.
  final List<IpsecPolicy>? vpnClientIpsecPolicies;
  /// VpnClientProtocols for Virtual network gateway.
  final List<String>? vpnClientProtocols;
  /// VpnClientRevokedCertificate for Virtual network gateway.
  final List<VpnClientRevokedCertificate>? vpnClientRevokedCertificates;
  /// VpnClientRootCertificate for virtual network gateway.
  final List<VpnClientRootCertificate>? vpnClientRootCertificates;

  /// Creates a new [VpnClientConfiguration].
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
  VpnClientConfiguration({
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
      'radiusServers': ?radiusServers == null ? null : pulumi.Input.encodeList<RadiusServer, Map<String, dynamic>>(radiusServers!, (value) => value.toMap()),
      'vngClientConnectionConfigurations': ?vngClientConnectionConfigurations == null ? null : pulumi.Input.encodeList<VngClientConnectionConfiguration, Map<String, dynamic>>(vngClientConnectionConfigurations!, (value) => value.toMap()),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientAddressPool': ?vpnClientAddressPool == null ? null : vpnClientAddressPool!.toMap(),
      'vpnClientIpsecPolicies': ?vpnClientIpsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(vpnClientIpsecPolicies!, (value) => value.toMap()),
      'vpnClientProtocols': ?vpnClientProtocols,
      'vpnClientRevokedCertificates': ?vpnClientRevokedCertificates == null ? null : pulumi.Input.encodeList<VpnClientRevokedCertificate, Map<String, dynamic>>(vpnClientRevokedCertificates!, (value) => value.toMap()),
      'vpnClientRootCertificates': ?vpnClientRootCertificates == null ? null : pulumi.Input.encodeList<VpnClientRootCertificate, Map<String, dynamic>>(vpnClientRootCertificates!, (value) => value.toMap()),
    };
  }

  factory VpnClientConfiguration.fromMap(Map<String, dynamic> map) {
    return VpnClientConfiguration(
      aadAudience: map['aadAudience'] == null ? null : map['aadAudience'] as String,
      aadIssuer: map['aadIssuer'] == null ? null : map['aadIssuer'] as String,
      aadTenant: map['aadTenant'] == null ? null : map['aadTenant'] as String,
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      radiusServers: map['radiusServers'] == null ? null : pulumi.Input.decodeList<RadiusServer>(map['radiusServers'], (value) => RadiusServer.fromMap((value as Map).cast<String, dynamic>())),
      vngClientConnectionConfigurations: map['vngClientConnectionConfigurations'] == null ? null : pulumi.Input.decodeList<VngClientConnectionConfiguration>(map['vngClientConnectionConfigurations'], (value) => VngClientConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      vpnAuthenticationTypes: map['vpnAuthenticationTypes'] == null ? null : (map['vpnAuthenticationTypes'] as List).cast<String>(),
      vpnClientAddressPool: map['vpnClientAddressPool'] == null ? null : AddressSpace.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientProtocols: map['vpnClientProtocols'] == null ? null : (map['vpnClientProtocols'] as List).cast<String>(),
      vpnClientRevokedCertificates: map['vpnClientRevokedCertificates'] == null ? null : pulumi.Input.decodeList<VpnClientRevokedCertificate>(map['vpnClientRevokedCertificates'], (value) => VpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientRootCertificates: map['vpnClientRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnClientRootCertificate>(map['vpnClientRootCertificates'], (value) => VpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

