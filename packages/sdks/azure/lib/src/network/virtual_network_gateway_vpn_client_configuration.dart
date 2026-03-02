// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_vpn_client_configuration_ipsec_policy.dart';
import 'virtual_network_gateway_vpn_client_configuration_radius_server.dart';
import 'virtual_network_gateway_vpn_client_configuration_revoked_certificate.dart';
import 'virtual_network_gateway_vpn_client_configuration_root_certificate.dart';
import 'virtual_network_gateway_vpn_client_configuration_virtual_network_gateway_client_connection.dart';

class VirtualNetworkGatewayVpnClientConfiguration {
  /// The client id of the Azure VPN application.
  /// See [Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections](https://docs.microsoft.com/en-gb/azure/vpn-gateway/openvpn-azure-ad-tenant-multi-app) for values
  final pulumi.Input<String>? aadAudience;
  /// The STS url for your tenant
  final pulumi.Input<String>? aadIssuer;
  /// AzureAD Tenant URL
  final pulumi.Input<String>? aadTenant;
  /// The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
  final pulumi.Input<List<String>> addressSpaces;
  /// An `ipsec_policy` block as defined below.
  final pulumi.Input<VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy>? ipsecPolicy;
  /// The address of the Radius server.
  final pulumi.Input<String>? radiusServerAddress;
  /// The secret used by the Radius server.
  final pulumi.Input<String>? radiusServerSecret;
  /// One or more `radius_server` blocks as defined below.
  final pulumi.Input<List<VirtualNetworkGatewayVpnClientConfigurationRadiusServer>>? radiusServers;
  /// One or more `revoked_certificate` blocks which are defined below.
  final pulumi.Input<List<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>>? revokedCertificates;
  /// One or more `root_certificate` blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
  final pulumi.Input<List<VirtualNetworkGatewayVpnClientConfigurationRootCertificate>>? rootCertificates;
  /// One or more `virtual_network_gateway_client_connection` blocks as defined below.
  final pulumi.Input<List<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection>>? virtualNetworkGatewayClientConnections;
  /// List of the vpn authentication types for the virtual network gateway.
  /// The supported values are `AAD`, `Radius` and `Certificate`.
  ///
  /// > **Note:** `vpn_auth_types` must be set when using multiple vpn authentication types.
  final pulumi.Input<List<String>>? vpnAuthTypes;
  /// List of the protocols supported by the vpn client.
  /// The supported values are `SSTP`, `IkeV2` and `OpenVPN`.
  /// Values `SSTP` and `IkeV2` are incompatible with the use of
  /// `aad_tenant`, `aad_audience` and `aad_issuer`.
  final pulumi.Input<List<String>>? vpnClientProtocols;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfiguration].
  /// [aadAudience] The client id of the Azure VPN application.
  /// [aadIssuer] The STS url for your tenant
  /// [aadTenant] AzureAD Tenant URL
  /// [addressSpaces] The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
  /// [ipsecPolicy] An `ipsec_policy` block as defined below.
  /// [radiusServerAddress] The address of the Radius server.
  /// [radiusServerSecret] The secret used by the Radius server.
  /// [radiusServers] One or more `radius_server` blocks as defined below.
  /// [revokedCertificates] One or more `revoked_certificate` blocks which are defined below.
  /// [rootCertificates] One or more `root_certificate` blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
  /// [virtualNetworkGatewayClientConnections] One or more `virtual_network_gateway_client_connection` blocks as defined below.
  /// [vpnAuthTypes] List of the vpn authentication types for the virtual network gateway.
  /// [vpnClientProtocols] List of the protocols supported by the vpn client.
  VirtualNetworkGatewayVpnClientConfiguration({
    this.aadAudience,
    this.aadIssuer,
    this.aadTenant,
    required this.addressSpaces,
    this.ipsecPolicy,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.radiusServers,
    this.revokedCertificates,
    this.rootCertificates,
    this.virtualNetworkGatewayClientConnections,
    this.vpnAuthTypes,
    this.vpnClientProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAudience': ?aadAudience,
      'aadIssuer': ?aadIssuer,
      'aadTenant': ?aadTenant,
      'addressSpaces': addressSpaces,
      'ipsecPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy, Map<String, dynamic>>(ipsecPolicy, (value) => value.toMap()),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayVpnClientConfigurationRadiusServer>, List<Map<String, dynamic>>>(radiusServers, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRadiusServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>, List<Map<String, dynamic>>>(revokedCertificates, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayVpnClientConfigurationRootCertificate>, List<Map<String, dynamic>>>(rootCertificates, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkGatewayClientConnections': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection>, List<Map<String, dynamic>>>(virtualNetworkGatewayClientConnections, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAuthTypes': ?vpnAuthTypes,
      'vpnClientProtocols': ?vpnClientProtocols,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfiguration(
      aadAudience: map['aadAudience'] == null ? null : (map['aadAudience'] as String).input(),
      aadIssuer: map['aadIssuer'] == null ? null : (map['aadIssuer'] as String).input(),
      aadTenant: map['aadTenant'] == null ? null : (map['aadTenant'] as String).input(),
      addressSpaces: ((map['addressSpaces'] as List).cast<String>()).input(),
      ipsecPolicy: map['ipsecPolicy'] == null ? null : (VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy.fromMap((map['ipsecPolicy'] as Map).cast<String, dynamic>())).input(),
      radiusServerAddress: map['radiusServerAddress'] == null ? null : (map['radiusServerAddress'] as String).input(),
      radiusServerSecret: map['radiusServerSecret'] == null ? null : (map['radiusServerSecret'] as String).input(),
      radiusServers: map['radiusServers'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRadiusServer>(map['radiusServers'], (value) => VirtualNetworkGatewayVpnClientConfigurationRadiusServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      revokedCertificates: map['revokedCertificates'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>(map['revokedCertificates'], (value) => VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rootCertificates: map['rootCertificates'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRootCertificate>(map['rootCertificates'], (value) => VirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkGatewayClientConnections: map['virtualNetworkGatewayClientConnections'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection>(map['virtualNetworkGatewayClientConnections'], (value) => VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnAuthTypes: map['vpnAuthTypes'] == null ? null : ((map['vpnAuthTypes'] as List).cast<String>()).input(),
      vpnClientProtocols: map['vpnClientProtocols'] == null ? null : ((map['vpnClientProtocols'] as List).cast<String>()).input(),
    );
  }
}

