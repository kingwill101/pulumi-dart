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
  final pulumi.Input<List<RadiusServer>>? radiusServers;
  /// per ip address pool connection policy for virtual network gateway P2S client.
  final pulumi.Input<List<VngClientConnectionConfiguration>>? vngClientConnectionConfigurations;
  /// VPN authentication types for the virtual network gateway..
  final pulumi.Input<List<String>>? vpnAuthenticationTypes;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final pulumi.Input<AddressSpace>? vpnClientAddressPool;
  /// VpnClientIpsecPolicies for virtual network gateway P2S client.
  final pulumi.Input<List<IpsecPolicy>>? vpnClientIpsecPolicies;
  /// VpnClientProtocols for Virtual network gateway.
  final pulumi.Input<List<String>>? vpnClientProtocols;
  /// VpnClientRevokedCertificate for Virtual network gateway.
  final pulumi.Input<List<VpnClientRevokedCertificate>>? vpnClientRevokedCertificates;
  /// VpnClientRootCertificate for virtual network gateway.
  final pulumi.Input<List<VpnClientRootCertificate>>? vpnClientRootCertificates;

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
      'radiusServers': ?pulumi.Input.mapOptionalInputValue<List<RadiusServer>, List<Map<String, dynamic>>>(radiusServers, (value) => pulumi.Input.encodeList<RadiusServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vngClientConnectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VngClientConnectionConfiguration>, List<Map<String, dynamic>>>(vngClientConnectionConfigurations, (value) => pulumi.Input.encodeList<VngClientConnectionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientAddressPool': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(vpnClientAddressPool, (value) => value.toMap()),
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientProtocols': ?vpnClientProtocols,
      'vpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnClientRevokedCertificate>, List<Map<String, dynamic>>>(vpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<VpnClientRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnClientRootCertificate>, List<Map<String, dynamic>>>(vpnClientRootCertificates, (value) => pulumi.Input.encodeList<VpnClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpnClientConfiguration.fromMap(Map<String, dynamic> map) {
    return VpnClientConfiguration(
      aadAudience: (() { final guardedValue = map['aadAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadIssuer: (() { final guardedValue = map['aadIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadTenant: (() { final guardedValue = map['aadTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerAddress: (() { final guardedValue = map['radiusServerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerSecret: (() { final guardedValue = map['radiusServerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServers: (() { final guardedValue = map['radiusServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RadiusServer>(guardedValue, (value) => RadiusServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vngClientConnectionConfigurations: (() { final guardedValue = map['vngClientConnectionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VngClientConnectionConfiguration>(guardedValue, (value) => VngClientConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnAuthenticationTypes: (() { final guardedValue = map['vpnAuthenticationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnClientAddressPool: (() { final guardedValue = map['vpnClientAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnClientIpsecPolicies: (() { final guardedValue = map['vpnClientIpsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicy>(guardedValue, (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientProtocols: (() { final guardedValue = map['vpnClientProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnClientRevokedCertificates: (() { final guardedValue = map['vpnClientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnClientRevokedCertificate>(guardedValue, (value) => VpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientRootCertificates: (() { final guardedValue = map['vpnClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnClientRootCertificate>(guardedValue, (value) => VpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

