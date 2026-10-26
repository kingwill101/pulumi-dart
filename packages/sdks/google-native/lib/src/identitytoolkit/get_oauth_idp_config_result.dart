// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_oauth_response_type_response.dart';

/// Result data returned by getOauthIdpConfig.
class GetOauthIdpConfigResult {
  /// The client id of an OAuth client.
  final String? clientId;
  /// The client secret of the OAuth client, to enable OIDC code flow.
  final String? clientSecret;
  /// The config's display name set by developers.
  final String? displayName;
  /// True if allows the user to sign in with the provider.
  final bool? enabled;
  /// For OIDC Idps, the issuer identifier.
  final String? issuer;
  /// The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  final String? name;
  /// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  final GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse? responseType;

  /// Creates a new [GetOauthIdpConfigResult].
  /// [clientId] The client id of an OAuth client.
  /// [clientSecret] The client secret of the OAuth client, to enable OIDC code flow.
  /// [displayName] The config's display name set by developers.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [issuer] For OIDC Idps, the issuer identifier.
  /// [name] The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
  /// [responseType] The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported.
  const GetOauthIdpConfigResult({
    this.clientId,
    this.clientSecret,
    this.displayName,
    this.enabled,
    this.issuer,
    this.name,
    this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'issuer': ?issuer,
      'name': ?name,
      'responseType': ?responseType?.toMap(),
    };
  }

  factory GetOauthIdpConfigResult.fromMap(Map<String, dynamic> map) {
    return GetOauthIdpConfigResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responseType: (() { final guardedValue = map['responseType']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
