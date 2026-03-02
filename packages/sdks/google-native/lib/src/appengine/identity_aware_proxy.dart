// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity-Aware Proxy
class IdentityAwareProxy {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  final pulumi.Input<bool>? enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String>? oauth2ClientId;
  /// OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  final pulumi.Input<String>? oauth2ClientSecret;

  /// Creates a new [IdentityAwareProxy].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly
  IdentityAwareProxy({
    this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'oauth2ClientId': ?oauth2ClientId,
      'oauth2ClientSecret': ?oauth2ClientSecret,
    };
  }

  factory IdentityAwareProxy.fromMap(Map<String, dynamic> map) {
    return IdentityAwareProxy(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      oauth2ClientId: map['oauth2ClientId'] == null ? null : (map['oauth2ClientId']! as String).input(),
      oauth2ClientSecret: map['oauth2ClientSecret'] == null ? null : (map['oauth2ClientSecret']! as String).input(),
    );
  }
}

