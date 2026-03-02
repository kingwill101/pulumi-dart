// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationIap {
  /// (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// (default is false)
  final pulumi.Input<bool>? enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 client secret to use for the authentication flow.
  /// The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.
  final pulumi.Input<String> oauth2ClientSecret;
  /// Hex-encoded SHA-256 hash of the client secret.
  final pulumi.Input<String>? oauth2ClientSecretSha256;

  /// Creates a new [ApplicationIap].
  /// [enabled] (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.
  /// [oauth2ClientSecretSha256] Hex-encoded SHA-256 hash of the client secret.
  ApplicationIap({
    this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': oauth2ClientSecret,
      'oauth2ClientSecretSha256': ?oauth2ClientSecretSha256,
    };
  }

  factory ApplicationIap.fromMap(Map<String, dynamic> map) {
    return ApplicationIap(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      oauth2ClientId: (map['oauth2ClientId'] as String).input(),
      oauth2ClientSecret: (map['oauth2ClientSecret'] as String).input(),
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] == null ? null : (map['oauth2ClientSecretSha256'] as String).input(),
    );
  }
}

