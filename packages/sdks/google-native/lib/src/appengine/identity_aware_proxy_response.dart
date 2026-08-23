// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity-Aware Proxy
class IdentityAwareProxyResponse {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  final pulumi.Input<bool> enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  final pulumi.Input<String> oauth2ClientSecret;
  /// Hex-encoded SHA-256 hash of the client secret.
  final pulumi.Input<String> oauth2ClientSecretSha256;

  /// Creates a new [IdentityAwareProxyResponse].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  /// [oauth2ClientSecretSha256] Hex-encoded SHA-256 hash of the client secret.
  const IdentityAwareProxyResponse({
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

  factory IdentityAwareProxyResponse.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxyResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientSecret: pulumi.Input.fromValue(map['oauth2ClientSecret'] as String),
      oauth2ClientSecretSha256: pulumi.Input.fromValue(map['oauth2ClientSecretSha256'] as String),
    );
  }
}
