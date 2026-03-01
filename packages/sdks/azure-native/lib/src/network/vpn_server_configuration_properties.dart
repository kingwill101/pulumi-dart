// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_authentication_parameters.dart';
import 'ipsec_policy.dart';
import 'radius_server.dart';
import 'vpn_server_config_radius_client_root_certificate.dart';
import 'vpn_server_config_radius_server_root_certificate.dart';
import 'vpn_server_config_vpn_client_revoked_certificate.dart';
import 'vpn_server_config_vpn_client_root_certificate.dart';
import 'vpn_server_configuration_policy_group.dart';

/// Parameters for VpnServerConfiguration.
class VpnServerConfigurationProperties {
  /// The set of aad vpn authentication parameters.
  final AadAuthenticationParameters? aadAuthenticationParameters;
  /// List of all VpnServerConfigurationPolicyGroups.
  final List<VpnServerConfigurationPolicyGroup>? configurationPolicyGroups;
  /// The name of the VpnServerConfiguration that is unique within a resource group.
  final String? name;
  /// Radius client root certificate of VpnServerConfiguration.
  final List<VpnServerConfigRadiusClientRootCertificate>? radiusClientRootCertificates;
  /// The radius server address property of the VpnServerConfiguration resource for point to site client connection.
  final String? radiusServerAddress;
  /// Radius Server root certificate of VpnServerConfiguration.
  final List<VpnServerConfigRadiusServerRootCertificate>? radiusServerRootCertificates;
  /// The radius secret property of the VpnServerConfiguration resource for point to site client connection.
  final String? radiusServerSecret;
  /// Multiple Radius Server configuration for VpnServerConfiguration.
  final List<RadiusServer>? radiusServers;
  /// VPN authentication types for the VpnServerConfiguration.
  final List<String>? vpnAuthenticationTypes;
  /// VpnClientIpsecPolicies for VpnServerConfiguration.
  final List<IpsecPolicy>? vpnClientIpsecPolicies;
  /// VPN client revoked certificate of VpnServerConfiguration.
  final List<VpnServerConfigVpnClientRevokedCertificate>? vpnClientRevokedCertificates;
  /// VPN client root certificate of VpnServerConfiguration.
  final List<VpnServerConfigVpnClientRootCertificate>? vpnClientRootCertificates;
  /// VPN protocols for the VpnServerConfiguration.
  final List<String>? vpnProtocols;

  /// Creates a new [VpnServerConfigurationProperties].
  /// [aadAuthenticationParameters] The set of aad vpn authentication parameters.
  /// [configurationPolicyGroups] List of all VpnServerConfigurationPolicyGroups.
  /// [name] The name of the VpnServerConfiguration that is unique within a resource group.
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
  VpnServerConfigurationProperties({
    this.aadAuthenticationParameters,
    this.configurationPolicyGroups,
    this.name,
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
      'aadAuthenticationParameters': ?aadAuthenticationParameters == null ? null : aadAuthenticationParameters!.toMap(),
      'configurationPolicyGroups': ?configurationPolicyGroups == null ? null : pulumi.Input.encodeList<VpnServerConfigurationPolicyGroup, Map<String, dynamic>>(configurationPolicyGroups!, (value) => value.toMap()),
      'name': ?name,
      'radiusClientRootCertificates': ?radiusClientRootCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigRadiusClientRootCertificate, Map<String, dynamic>>(radiusClientRootCertificates!, (value) => value.toMap()),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerRootCertificates': ?radiusServerRootCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigRadiusServerRootCertificate, Map<String, dynamic>>(radiusServerRootCertificates!, (value) => value.toMap()),
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?radiusServers == null ? null : pulumi.Input.encodeList<RadiusServer, Map<String, dynamic>>(radiusServers!, (value) => value.toMap()),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientIpsecPolicies': ?vpnClientIpsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(vpnClientIpsecPolicies!, (value) => value.toMap()),
      'vpnClientRevokedCertificates': ?vpnClientRevokedCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigVpnClientRevokedCertificate, Map<String, dynamic>>(vpnClientRevokedCertificates!, (value) => value.toMap()),
      'vpnClientRootCertificates': ?vpnClientRootCertificates == null ? null : pulumi.Input.encodeList<VpnServerConfigVpnClientRootCertificate, Map<String, dynamic>>(vpnClientRootCertificates!, (value) => value.toMap()),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory VpnServerConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationProperties(
      aadAuthenticationParameters: map['aadAuthenticationParameters'] == null ? null : AadAuthenticationParameters.fromMap((map['aadAuthenticationParameters'] as Map).cast<String, dynamic>()),
      configurationPolicyGroups: map['configurationPolicyGroups'] == null ? null : pulumi.Input.decodeList<VpnServerConfigurationPolicyGroup>(map['configurationPolicyGroups'], (value) => VpnServerConfigurationPolicyGroup.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      radiusClientRootCertificates: map['radiusClientRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigRadiusClientRootCertificate>(map['radiusClientRootCertificates'], (value) => VpnServerConfigRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerRootCertificates: map['radiusServerRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigRadiusServerRootCertificate>(map['radiusServerRootCertificates'], (value) => VpnServerConfigRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      radiusServers: map['radiusServers'] == null ? null : pulumi.Input.decodeList<RadiusServer>(map['radiusServers'], (value) => RadiusServer.fromMap((value as Map).cast<String, dynamic>())),
      vpnAuthenticationTypes: map['vpnAuthenticationTypes'] == null ? null : (map['vpnAuthenticationTypes'] as List).cast<String>(),
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientRevokedCertificates: map['vpnClientRevokedCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigVpnClientRevokedCertificate>(map['vpnClientRevokedCertificates'], (value) => VpnServerConfigVpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientRootCertificates: map['vpnClientRootCertificates'] == null ? null : pulumi.Input.decodeList<VpnServerConfigVpnClientRootCertificate>(map['vpnClientRootCertificates'], (value) => VpnServerConfigVpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      vpnProtocols: map['vpnProtocols'] == null ? null : (map['vpnProtocols'] as List).cast<String>(),
    );
  }
}

