// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_idp_config_response.dart';
import 'google_cloud_identitytoolkit_admin_v2_sp_config_response.dart';

/// Result data returned by getInboundSamlConfig.
class GetInboundSamlConfigResult {
  /// The config's display name set by developers.
  final String displayName;
  /// True if allows the user to sign in with the provider.
  final bool enabled;
  /// The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  final GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse idpConfig;
  /// The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  final String name;
  /// The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  final GoogleCloudIdentitytoolkitAdminV2SpConfigResponse spConfig;

  /// Creates a new [GetInboundSamlConfigResult].
  /// [displayName] The config's display name set by developers.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [idpConfig] The SAML IdP (Identity Provider) configuration when the project acts as the relying party.
  /// [name] The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
  /// [spConfig] The SAML SP (Service Provider) configuration when the project acts as the relying party to receive and accept an authentication assertion issued by a SAML identity provider.
  GetInboundSamlConfigResult({
    required this.displayName,
    required this.enabled,
    required this.idpConfig,
    required this.name,
    required this.spConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'enabled': enabled,
      'idpConfig': idpConfig.toMap(),
      'name': name,
      'spConfig': spConfig.toMap(),
    };
  }

  factory GetInboundSamlConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlConfigResult(
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      idpConfig: GoogleCloudIdentitytoolkitAdminV2IdpConfigResponse.fromMap((map['idpConfig']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      spConfig: GoogleCloudIdentitytoolkitAdminV2SpConfigResponse.fromMap((map['spConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

