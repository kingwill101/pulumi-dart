// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy.dart';
import 'p2_svpn_server_config_radius_client_root_certificate.dart';
import 'p2_svpn_server_config_radius_server_root_certificate.dart';
import 'p2_svpn_server_config_vpn_client_revoked_certificate.dart';
import 'p2_svpn_server_config_vpn_client_root_certificate.dart';

/// Parameters for P2SVpnServerConfiguration.
class P2SVpnServerConfigurationProperties {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  final pulumi.Input<String>? name;
  /// Radius client root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigRadiusClientRootCertificate>>? p2SVpnServerConfigRadiusClientRootCertificates;
  /// Radius Server root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigRadiusServerRootCertificate>>? p2SVpnServerConfigRadiusServerRootCertificates;
  /// VPN client revoked certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigVpnClientRevokedCertificate>>? p2SVpnServerConfigVpnClientRevokedCertificates;
  /// VPN client root certificate of P2SVpnServerConfiguration.
  final pulumi.Input<List<P2SVpnServerConfigVpnClientRootCertificate>>? p2SVpnServerConfigVpnClientRootCertificates;
  /// The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerAddress;
  /// The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerSecret;
  /// VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  final pulumi.Input<List<IpsecPolicy>>? vpnClientIpsecPolicies;
  /// VPN protocols for the P2SVpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnProtocols;

  /// Creates a new [P2SVpnServerConfigurationProperties].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  /// [p2SVpnServerConfigRadiusClientRootCertificates] Radius client root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigRadiusServerRootCertificates] Radius Server root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRevokedCertificates] VPN client revoked certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRootCertificates] VPN client root certificate of P2SVpnServerConfiguration.
  /// [radiusServerAddress] The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [radiusServerSecret] The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  /// [vpnProtocols] VPN protocols for the P2SVpnServerConfiguration.
  P2SVpnServerConfigurationProperties({
    this.etag,
    this.name,
    this.p2SVpnServerConfigRadiusClientRootCertificates,
    this.p2SVpnServerConfigRadiusServerRootCertificates,
    this.p2SVpnServerConfigVpnClientRevokedCertificates,
    this.p2SVpnServerConfigVpnClientRootCertificates,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.vpnClientIpsecPolicies,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'name': ?name,
      'p2SVpnServerConfigRadiusClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigRadiusClientRootCertificate>, List<Map<String, dynamic>>>(p2SVpnServerConfigRadiusClientRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigRadiusClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigRadiusServerRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigRadiusServerRootCertificate>, List<Map<String, dynamic>>>(p2SVpnServerConfigRadiusServerRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigRadiusServerRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigVpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigVpnClientRevokedCertificate>, List<Map<String, dynamic>>>(p2SVpnServerConfigVpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'p2SVpnServerConfigVpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<P2SVpnServerConfigVpnClientRootCertificate>, List<Map<String, dynamic>>>(p2SVpnServerConfigVpnClientRootCertificates, (value) => pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory P2SVpnServerConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigurationProperties(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p2SVpnServerConfigRadiusClientRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigRadiusClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigRadiusClientRootCertificate>(guardedValue, (value) => P2SVpnServerConfigRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigRadiusServerRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigRadiusServerRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigRadiusServerRootCertificate>(guardedValue, (value) => P2SVpnServerConfigRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigVpnClientRevokedCertificates: (() { final guardedValue = map['p2SVpnServerConfigVpnClientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRevokedCertificate>(guardedValue, (value) => P2SVpnServerConfigVpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      p2SVpnServerConfigVpnClientRootCertificates: (() { final guardedValue = map['p2SVpnServerConfigVpnClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRootCertificate>(guardedValue, (value) => P2SVpnServerConfigVpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      radiusServerAddress: (() { final guardedValue = map['radiusServerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerSecret: (() { final guardedValue = map['radiusServerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnClientIpsecPolicies: (() { final guardedValue = map['vpnClientIpsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicy>(guardedValue, (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnProtocols: (() { final guardedValue = map['vpnProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

