// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_server_configuration_azure_active_directory_authentication.dart';
import 'vpn_server_configuration_client_revoked_certificate.dart';
import 'vpn_server_configuration_client_root_certificate.dart';
import 'vpn_server_configuration_ipsec_policy.dart';
import 'vpn_server_configuration_radius.dart';

/// Input properties used for looking up and filtering VpnServerConfiguration resources.
class VpnServerConfigurationState {
  final pulumi.Input<List<VpnServerConfigurationAzureActiveDirectoryAuthentication>?>? azureActiveDirectoryAuthentications;
  final pulumi.Input<List<VpnServerConfigurationClientRevokedCertificate>?>? clientRevokedCertificates;
  final pulumi.Input<List<VpnServerConfigurationClientRootCertificate>?>? clientRootCertificates;
  /// A `ipsecPolicy` block as defined below.
  final pulumi.Input<VpnServerConfigurationIpsecPolicy?>? ipsecPolicy;
  /// The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  final pulumi.Input<VpnServerConfigurationRadius?>? radius;
  /// The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A list of Authentication Types applicable for this VPN Server Configuration. Possible values are `AAD` (Azure Active Directory), `Certificate` and `Radius`.
  final pulumi.Input<List<String>?>? vpnAuthenticationTypes;
  /// A list of VPN Protocols to use for this Server Configuration. Possible values are `IkeV2` and `OpenVPN`.
  final pulumi.Input<List<String>?>? vpnProtocols;

  /// Creates a new [VpnServerConfigurationState].
  /// [azureActiveDirectoryAuthentications] Optional.
  /// [clientRevokedCertificates] Optional.
  /// [clientRootCertificates] Optional.
  /// [ipsecPolicy] A `ipsecPolicy` block as defined below.
  /// [location] The Azure location where this VPN Server Configuration should be created. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this VPN Server Configuration. Changing this forces a new resource to be created.
  /// [radius] Optional.
  /// [resourceGroupName] The Name of the Resource Group in which this VPN Server Configuration should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpnAuthenticationTypes] A list of Authentication Types applicable for this VPN Server Configuration. Possible values are `AAD` (Azure Active Directory), `Certificate` and `Radius`.
  /// [vpnProtocols] A list of VPN Protocols to use for this Server Configuration. Possible values are `IkeV2` and `OpenVPN`.
  const VpnServerConfigurationState({
    this.azureActiveDirectoryAuthentications,
    this.clientRevokedCertificates,
    this.clientRootCertificates,
    this.ipsecPolicy,
    this.location,
    this.name,
    this.radius,
    this.resourceGroupName,
    this.tags,
    this.vpnAuthenticationTypes,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAuthentications': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationAzureActiveDirectoryAuthentication>, List<Map<String, dynamic>>>(azureActiveDirectoryAuthentications, (value) => pulumi.Input.encodeList<VpnServerConfigurationAzureActiveDirectoryAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientRevokedCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationClientRevokedCertificate>, List<Map<String, dynamic>>>(clientRevokedCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigurationClientRevokedCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<VpnServerConfigurationClientRootCertificate>, List<Map<String, dynamic>>>(clientRootCertificates, (value) => pulumi.Input.encodeList<VpnServerConfigurationClientRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecPolicy': ?pulumi.Input.mapOptionalInputValue<VpnServerConfigurationIpsecPolicy, Map<String, dynamic>>(ipsecPolicy, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'radius': ?pulumi.Input.mapOptionalInputValue<VpnServerConfigurationRadius, Map<String, dynamic>>(radius, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'vpnAuthenticationTypes': ?vpnAuthenticationTypes,
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory VpnServerConfigurationState.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationState(
      azureActiveDirectoryAuthentications: (() { final guardedValue = map['azureActiveDirectoryAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationAzureActiveDirectoryAuthentication>(guardedValue, (value) => VpnServerConfigurationAzureActiveDirectoryAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientRevokedCertificates: (() { final guardedValue = map['clientRevokedCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationClientRevokedCertificate>(guardedValue, (value) => VpnServerConfigurationClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientRootCertificates: (() { final guardedValue = map['clientRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnServerConfigurationClientRootCertificate>(guardedValue, (value) => VpnServerConfigurationClientRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipsecPolicy: (() { final guardedValue = map['ipsecPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnServerConfigurationIpsecPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radius: (() { final guardedValue = map['radius']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnServerConfigurationRadius.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpnAuthenticationTypes: (() { final guardedValue = map['vpnAuthenticationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpnProtocols: (() { final guardedValue = map['vpnProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
