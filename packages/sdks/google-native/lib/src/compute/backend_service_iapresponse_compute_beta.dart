// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity-Aware Proxy
class BackendServiceIAPResponseComputeBeta {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final pulumi.Input<String> oauth2ClientSecret;
  /// SHA256 hash value for the field oauth2_client_secret above.
  final pulumi.Input<String> oauth2ClientSecretSha256;

  /// Creates a new [BackendServiceIAPResponseComputeBeta].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  /// [oauth2ClientSecretSha256] SHA256 hash value for the field oauth2_client_secret above.
  const BackendServiceIAPResponseComputeBeta({
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
    required this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': oauth2ClientSecret,
      'oauth2ClientSecretSha256': oauth2ClientSecretSha256,
    };
  }

  factory BackendServiceIAPResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceIAPResponseComputeBeta(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientSecret: pulumi.Input.fromValue(map['oauth2ClientSecret'] as String),
      oauth2ClientSecretSha256: pulumi.Input.fromValue(map['oauth2ClientSecretSha256'] as String),
    );
  }
}
