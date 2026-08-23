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
  final pulumi.Input<AadAuthenticationParameters>? aadAuthenticationParameters;
  /// List of all VpnServerConfigurationPolicyGroups.
  final pulumi.Input<List<VpnServerConfigurationPolicyGroup>>? configurationPolicyGroups;
  /// The name of the VpnServerConfiguration that is unique within a resource group.
  final pulumi.Input<String>? name;
  /// Radius client root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigRadiusClientRootCertificate>>? radiusClientRootCertificates;
  /// The radius server address property of the VpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerAddress;
  /// Radius Server root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigRadiusServerRootCertificate>>? radiusServerRootCertificates;
  /// The radius secret property of the VpnServerConfiguration resource for point to site client connection.
  final pulumi.Input<String>? radiusServerSecret;
  /// Multiple Radius Server configuration for VpnServerConfiguration.
  final pulumi.Input<List<RadiusServer>>? radiusServers;
  /// VPN authentication types for the VpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnAuthenticationTypes;
  /// VpnClientIpsecPolicies for VpnServerConfiguration.
  final pulumi.Input<List<IpsecPolicy>>? vpnClientIpsecPolicies;
  /// VPN client revoked certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigVpnClientRevokedCertificate>>? vpnClientRevokedCertificates;
  /// VPN client root certificate of VpnServerConfiguration.
  final pulumi.Input<List<VpnServerConfigVpnClientRootCertificate>>? vpnClientRootCertificates;
  /// VPN protocols for the VpnServerConfiguration.
  final pulumi.Input<List<String>>? vpnProtocols;

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
  const VpnServerConfigurationProperties({
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
      'aadAuthenticationParameters': ?pulumi.Input.mapOptionalInputValue<AadAuthenticationParameters, Map<String, dynamic>>(aadAuthenticationParameters, (value) => value.toMap()),
      'configurationPolicyGroups': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationPolicyGroup>, List<Map<String, dynamic>>>(configurationPolicyGroups, (value) => pulumi.Input.encodeList<VpnServerConfigurationPolicyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'radiusClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigRadiusClientRootCertificate>, List<Map<String, dynamic>>>(radiusClientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigRadiusClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigRadiusServerRootCertificate>, List<Map<String, dynamic>>>(radiusServerRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigRadiusServerRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?pulumi.Input.mapOptionalInputValue<List<RadiusServer>, List<Map<String, dynamic>>>(radiusServers, (value) => pulumi.Input.encodeList<RadiusServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnClientIpsecPolicies': ?pulumi.Input.mapOptionalInputValue<List<IpsecPolicy>, List<Map<String, dynamic>>>(vpnClientIpsecPolicies, (value) => pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigVpnClientRevokedCertificate>, List<Map<String, dynamic>>>(vpnClientRevokedCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigVpnClientRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigVpnClientRootCertificate>, List<Map<String, dynamic>>>(vpnClientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigVpnClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory VpnServerConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationProperties(
      aadAuthenticationParameters: (() { final guardedValue = map['aadAuthenticationParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AadAuthenticationParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationPolicyGroups: (() { final guardedValue = map['configurationPolicyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationPolicyGroup>(guardedValue, (value) => VpnServerConfigurationPolicyGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusClientRootCertificates: (() { final guardedValue = map['radiusClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigRadiusClientRootCertificate>(guardedValue, (value) => VpnServerConfigRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      radiusServerAddress: (() { final guardedValue = map['radiusServerAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServerRootCertificates: (() { final guardedValue = map['radiusServerRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigRadiusServerRootCertificate>(guardedValue, (value) => VpnServerConfigRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      radiusServerSecret: (() { final guardedValue = map['radiusServerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radiusServers: (() { final guardedValue = map['radiusServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RadiusServer>(guardedValue, (value) => RadiusServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnAuthenticationTypes: (() { final guardedValue = map['vpnAuthenticationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnClientIpsecPolicies: (() { final guardedValue = map['vpnClientIpsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpsecPolicy>(guardedValue, (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientRevokedCertificates: (() { final guardedValue = map['vpnClientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigVpnClientRevokedCertificate>(guardedValue, (value) => VpnServerConfigVpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientRootCertificates: (() { final guardedValue = map['vpnClientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigVpnClientRootCertificate>(guardedValue, (value) => VpnServerConfigVpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnProtocols: (() { final guardedValue = map['vpnProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
