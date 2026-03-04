// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity-Aware Proxy
class BackendServiceIAPComputeBeta {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool>? enabled;

  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String>? oauth2ClientId;

  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final pulumi.Input<String>? oauth2ClientSecret;

  /// Creates a new [BackendServiceIAPComputeBeta].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  BackendServiceIAPComputeBeta({
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

  factory BackendServiceIAPComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceIAPComputeBeta(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      oauth2ClientId: (() {
        final guardedValue = map['oauth2ClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauth2ClientSecret: (() {
        final guardedValue = map['oauth2ClientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
