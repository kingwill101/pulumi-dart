// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_server_configuration_azure_active_directory_authentication.dart';
import 'get_vpn_server_configuration_client_revoked_certificate.dart';
import 'get_vpn_server_configuration_client_root_certificate.dart';
import 'get_vpn_server_configuration_ipsec_policy.dart';
import 'get_vpn_server_configuration_radius.dart';

/// Result data returned by getVpnServerConfiguration.
class GetVpnServerConfigurationResult {
  /// A `azureActiveDirectoryAuthentication` block as defined below.
  final List<GetVpnServerConfigurationAzureActiveDirectoryAuthentication>? azureActiveDirectoryAuthentications;
  /// One or more `clientRevokedCertificate` blocks as defined below.
  final List<GetVpnServerConfigurationClientRevokedCertificate>? clientRevokedCertificates;
  /// One or more `clientRootCertificate` blocks as defined below.
  final List<GetVpnServerConfigurationClientRootCertificate>? clientRootCertificates;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The `bgpSettings` block as defined below.
  final List<GetVpnServerConfigurationIpsecPolicy>? ipsecPolicies;
  /// The Azure Region where the VPN Server Configuration exists.
  final String? location;
  /// The name used to uniquely identify this certificate.
  final String? name;
  /// A `radius` block as defined below.
  final List<GetVpnServerConfigurationRadius>? radii;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the VPN Server Configuration.
  final Map<String, String>? tags;
  /// The list of Authentication Types applicable for the VPN Server Configuration.
  final List<String>? vpnAuthenticationTypes;
  /// The list of VPN Protocols to use for the VPN Server Configuration.
  final List<String>? vpnProtocols;

  /// Creates a new [GetVpnServerConfigurationResult].
  /// [azureActiveDirectoryAuthentications] A `azureActiveDirectoryAuthentication` block as defined below.
  /// [clientRevokedCertificates] One or more `clientRevokedCertificate` blocks as defined below.
  /// [clientRootCertificates] One or more `clientRootCertificate` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipsecPolicies] The `bgpSettings` block as defined below.
  /// [location] The Azure Region where the VPN Server Configuration exists.
  /// [name] The name used to uniquely identify this certificate.
  /// [radii] A `radius` block as defined below.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the VPN Server Configuration.
  /// [vpnAuthenticationTypes] The list of Authentication Types applicable for the VPN Server Configuration.
  /// [vpnProtocols] The list of VPN Protocols to use for the VPN Server Configuration.
  const GetVpnServerConfigurationResult({
    this.azureActiveDirectoryAuthentications,
    this.clientRevokedCertificates,
    this.clientRootCertificates,
    this.id,
    this.ipsecPolicies,
    this.location,
    this.name,
    this.radii,
    this.resourceGroupName,
    this.tags,
    this.vpnAuthenticationTypes,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAuthentications': ?(() { final guardedValue = azureActiveDirectoryAuthentications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnServerConfigurationAzureActiveDirectoryAuthentication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientRevokedCertificates': ?(() { final guardedValue = clientRevokedCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnServerConfigurationClientRevokedCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientRootCertificates': ?(() { final guardedValue = clientRootCertificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnServerConfigurationClientRootCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipsecPolicies': ?(() { final guardedValue = ipsecPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnServerConfigurationIpsecPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'radii': ?(() { final guardedValue = radii; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnServerConfigurationRadius, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory GetVpnServerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationResult(
      azureActiveDirectoryAuthentications: (() { final guardedValue = map['azureActiveDirectoryAuthentications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnServerConfigurationAzureActiveDirectoryAuthentication>(guardedValue, (value) => GetVpnServerConfigurationAzureActiveDirectoryAuthentication.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientRevokedCertificates: (() { final guardedValue = map['clientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnServerConfigurationClientRevokedCertificate>(guardedValue, (value) => GetVpnServerConfigurationClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientRootCertificates: (() { final guardedValue = map['clientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnServerConfigurationClientRootCertificate>(guardedValue, (value) => GetVpnServerConfigurationClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipsecPolicies: (() { final guardedValue = map['ipsecPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnServerConfigurationIpsecPolicy>(guardedValue, (value) => GetVpnServerConfigurationIpsecPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      radii: (() { final guardedValue = map['radii']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnServerConfigurationRadius>(guardedValue, (value) => GetVpnServerConfigurationRadius.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpnAuthenticationTypes: (() { final guardedValue = map['vpnAuthenticationTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpnProtocols: (() { final guardedValue = map['vpnProtocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
