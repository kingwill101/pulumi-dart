// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_apple_sign_in_config_response.dart';

/// Result data returned by getDefaultSupportedIdpConfig.
class GetDefaultSupportedIdpConfigResult {
  /// Additional config for Apple-based projects.
  final GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse? appleSignInConfig;
  /// OAuth client ID.
  final String? clientId;
  /// OAuth client secret.
  final String? clientSecret;
  /// True if allows the user to sign in with the provider.
  final bool? enabled;
  /// The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  final String? name;

  /// Creates a new [GetDefaultSupportedIdpConfigResult].
  /// [appleSignInConfig] Additional config for Apple-based projects.
  /// [clientId] OAuth client ID.
  /// [clientSecret] OAuth client secret.
  /// [enabled] True if allows the user to sign in with the provider.
  /// [name] The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-awesome-project/defaultSupportedIdpConfigs/google.com"
  const GetDefaultSupportedIdpConfigResult({
    this.appleSignInConfig,
    this.clientId,
    this.clientSecret,
    this.enabled,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appleSignInConfig': ?appleSignInConfig?.toMap(),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'enabled': ?enabled,
      'name': ?name,
    };
  }

  factory GetDefaultSupportedIdpConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultSupportedIdpConfigResult(
      appleSignInConfig: (() { final guardedValue = map['appleSignInConfig']; if (guardedValue == null) return null; return GoogleCloudIdentitytoolkitAdminV2AppleSignInConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
