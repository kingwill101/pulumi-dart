// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_network_gateway_vpn_client_configuration_revoked_certificate.dart';
import 'get_virtual_network_gateway_vpn_client_configuration_root_certificate.dart';

class GetVirtualNetworkGatewayVpnClientConfiguration {
  /// The client id of the Azure VPN application.
  /// See [Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections](https://docs.microsoft.com/en-gb/azure/vpn-gateway/openvpn-azure-ad-tenant-multi-app) for values
  /// This setting is incompatible with the use of
  /// `root_certificate` and `revoked_certificate`, `radius_server_address`, and `radius_server_secret`.
  final pulumi.Input<String> aadAudience;
  /// The STS url for your tenant
  /// This setting is incompatible with the use of
  /// `root_certificate` and `revoked_certificate`, `radius_server_address`, and `radius_server_secret`.
  final pulumi.Input<String> aadIssuer;
  /// AzureAD Tenant URL
  /// This setting is incompatible with the use of
  /// `root_certificate` and `revoked_certificate`, `radius_server_address`, and `radius_server_secret`.
  final pulumi.Input<String> aadTenant;
  /// The address space out of which IP addresses for
  /// vpn clients will be taken. You can provide more than one address space, e.g.
  /// in CIDR notation.
  final pulumi.Input<List<String>> addressSpaces;
  /// The address of the Radius server.
  /// This setting is incompatible with the use of
  /// `aad_tenant`, `aad_audience`, `aad_issuer`, `root_certificate` and `revoked_certificate`.
  final pulumi.Input<String> radiusServerAddress;
  /// The secret used by the Radius server.
  /// This setting is incompatible with the use of
  /// `aad_tenant`, `aad_audience`, `aad_issuer`, `root_certificate` and `revoked_certificate`.
  final pulumi.Input<String> radiusServerSecret;
  /// One or more `revoked_certificate` blocks which
  /// are defined below.
  /// This setting is incompatible with the use of
  /// `aad_tenant`, `aad_audience`, `aad_issuer`, `radius_server_address`, and `radius_server_secret`.
  final pulumi.Input<List<GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>> revokedCertificates;
  /// One or more `root_certificate` blocks which are
  /// defined below. These root certificates are used to sign the client certificate
  /// used by the VPN clients to connect to the gateway.
  /// This setting is incompatible with the use of
  /// `aad_tenant`, `aad_audience`, `aad_issuer`, `radius_server_address`, and `radius_server_secret`.
  final pulumi.Input<List<GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate>> rootCertificates;
  /// List of the protocols supported by the vpn client.
  /// The supported values are `SSTP`, `IkeV2` and `OpenVPN`.
  final pulumi.Input<List<String>> vpnClientProtocols;

  /// Creates a new [GetVirtualNetworkGatewayVpnClientConfiguration].
  /// [aadAudience] The client id of the Azure VPN application.
  /// [aadIssuer] The STS url for your tenant
  /// [aadTenant] AzureAD Tenant URL
  /// [addressSpaces] The address space out of which IP addresses for
  /// [radiusServerAddress] The address of the Radius server.
  /// [radiusServerSecret] The secret used by the Radius server.
  /// [revokedCertificates] One or more `revoked_certificate` blocks which
  /// [rootCertificates] One or more `root_certificate` blocks which are
  /// [vpnClientProtocols] List of the protocols supported by the vpn client.
  GetVirtualNetworkGatewayVpnClientConfiguration({
    required this.aadAudience,
    required this.aadIssuer,
    required this.aadTenant,
    required this.addressSpaces,
    required this.radiusServerAddress,
    required this.radiusServerSecret,
    required this.revokedCertificates,
    required this.rootCertificates,
    required this.vpnClientProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAudience': aadAudience,
      'aadIssuer': aadIssuer,
      'aadTenant': aadTenant,
      'addressSpaces': addressSpaces,
      'radiusServerAddress': radiusServerAddress,
      'radiusServerSecret': radiusServerSecret,
      'revokedCertificates': pulumi.Input.mapInputValue<List<GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>, List<Map<String, dynamic>>>(revokedCertificates, (value) => pulumi.Input.encodeList<GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootCertificates': pulumi.Input.mapInputValue<List<GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate>, List<Map<String, dynamic>>>(rootCertificates, (value) => pulumi.Input.encodeList<GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientProtocols': vpnClientProtocols,
    };
  }

  factory GetVirtualNetworkGatewayVpnClientConfiguration.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnClientConfiguration(
      aadAudience: (map['aadAudience'] as String).input(),
      aadIssuer: (map['aadIssuer'] as String).input(),
      aadTenant: (map['aadTenant'] as String).input(),
      addressSpaces: ((map['addressSpaces'] as List).cast<String>()).input(),
      radiusServerAddress: (map['radiusServerAddress'] as String).input(),
      radiusServerSecret: (map['radiusServerSecret'] as String).input(),
      revokedCertificates: (pulumi.Input.decodeList<GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>(map['revokedCertificates'], (value) => GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rootCertificates: (pulumi.Input.decodeList<GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate>(map['rootCertificates'], (value) => GetVirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnClientProtocols: ((map['vpnClientProtocols'] as List).cast<String>()).input(),
    );
  }
}

