// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationIap {
  /// (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// (default is false)
  final pulumi.Input<bool?>? enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 client secret to use for the authentication flow.
  /// The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.
  final pulumi.Input<String> oauth2ClientSecret;
  /// Hex-encoded SHA-256 hash of the client secret.
  final pulumi.Input<String?>? oauth2ClientSecretSha256;

  /// Creates a new [ApplicationIap].
  /// [enabled] (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.
  /// [oauth2ClientSecretSha256] Hex-encoded SHA-256 hash of the client secret.
  const ApplicationIap({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientSecret: pulumi.Input.fromValue(map['oauth2ClientSecret'] as String),
      oauth2ClientSecretSha256: (() { final guardedValue = map['oauth2ClientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
