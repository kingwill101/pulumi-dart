// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_response.dart';
import 'p2_svpn_server_config_radius_client_root_certificate_response.dart';
import 'p2_svpn_server_config_radius_server_root_certificate_response.dart';
import 'p2_svpn_server_config_vpn_client_revoked_certificate_response.dart';
import 'p2_svpn_server_config_vpn_client_root_certificate_response.dart';
import 'sub_resource_response.dart';

/// Parameters for P2SVpnServerConfiguration.
class P2SVpnServerConfigurationPropertiesResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  final pulumi.Input<String>? name;
  /// List of references to P2SVpnGateways.
  final pulumi.Input<List<SubResourceResponse>> p2SVpnGateways;
  /// Radius client root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigRadiusClientRootCertificateResponse>>? p2SVpnServerConfigRadiusClientRootCertificates;
  /// Radius Server root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigRadiusServerRootCertificateResponse>>? p2SVpnServerConfigRadiusServerRootCertificates;
  /// VPN client revoked certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigVpnClientRevokedCertificateResponse>>? p2SVpnServerConfigVpnClientRevokedCertificates;
  /// VPN client root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigVpnClientRootCertificateResponse>>? p2SVpnServerConfigVpnClientRootCertificates;
  /// The provisioning state of the P2S VPN server configuration resource.
  final pulumi.Input<String> provisioningState;
  /// The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerAddress;
  /// The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerSecret;
  /// VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  final pulumi.Input<List<IpsecPolicyResponse>>? vpnClientIpsecPolicies;
  /// VPN protocols for the P2SVpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnProtocols;

  /// Creates a new [P2SVpnServerConfigurationPropertiesResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  /// [p2SVpnGateways] List of references to P2SVpnGateways.
  /// [p2SVpnServerConfigRadiusClientRootCertificates] Radius client root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigRadiusServerRootCertificates] Radius Server root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRevokedCertificates] VPN client revoked certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRootCertificates] VPN client root certificate of P2SVpnServerConfiguration.
  /// [provisioningState] The provisioning state of the P2S VPN server configuration resource.
  /// [radiusServerAddress] The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [radiusServerSecret] The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  /// [vpnProtocols] VPN protocols for the P2SVpnServerConfiguration.
  const P2SVpnServerConfigurationPropertiesResponse({
    this.etag,
    this.name,
    required this.p2SVpnGateways,
    this.p2SVpnServerConfigRadiusClientRootCertificates,
    this.p2SVpnServerConfigRadiusServerRootCertificates,
    this.p2SVpnServerConfigVpnClientRevokedCertificates,
    this.p2SVpnServerConfigVpnClientRootCertificates,
    required this.provisioningState,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.vpnClientIpsecPolicies,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'name': ?name,
      'p2SVpnGateways': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(p2SVpnGateways, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigRadiusClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigRadiusClientRootCertificateResponse>, List<Map<String, dynamic>>>(p2SVpnServerConfigRadiusClientRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigRadiusClientRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigRadiusServerRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigRadiusServerRootCertificateResponse>, List<Map<String, dynamic>>>(p2SVpnServerConfigRadiusServerRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigRadiusServerRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigVpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigVpnClientRevokedCertificateResponse>, List<Map<String, dynamic>>>(p2SVpnServerConfigVpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRevokedCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigVpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigVpnClientRootCertificateResponse>, List<Map<String, dynamic>>>(p2SVpnServerConfigVpnClientRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicyResponse>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory P2SVpnServerConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigurationPropertiesResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p2SVpnGateways: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['p2SVpnGateways']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      p2SVpnServerConfigRadiusClientRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigRadiusClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigRadiusClientRootCertificateResponse>(guardedValue, (value) => P2SVpnServerConfigRadiusClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigRadiusServerRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigRadiusServerRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigRadiusServerRootCertificateResponse>(guardedValue, (value) => P2SVpnServerConfigRadiusServerRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigVpnClientRevokedCertificates: (() { final guardedValue = map['p2SVpnServerConfigVpnClientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRevokedCertificateResponse>(guardedValue, (value) => P2SVpnServerConfigVpnClientRevokedCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigVpnClientRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigVpnClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRootCertificateResponse>(guardedValue, (value) => P2SVpnServerConfigVpnClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      radiusServerAddress: (() { final guardedValue = map['radiusServerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerSecret: (() { final guardedValue = map['radiusServerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnClientIpsecPolicies: (() { final guardedValue = map['vpnClientIpsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicyResponse>(guardedValue, (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnProtocols: (() { final guardedValue = map['vpnProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
