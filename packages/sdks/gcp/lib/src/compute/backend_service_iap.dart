// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 Client ID for IAP
  final pulumi.Input<String>? oauth2ClientId;
  /// OAuth2 Client Secret for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? oauth2ClientSecret;
  /// (Output)
  /// OAuth2 Client Secret SHA-256 for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? oauth2ClientSecretSha256;

  /// Creates a new [BackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] (Output)
  BackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': ?oauth2ClientId,
      'oauth2ClientSecret': ?oauth2ClientSecret,
      'oauth2ClientSecretSha256': ?oauth2ClientSecretSha256,
    };
  }

  factory BackendServiceIap.fromMap(Map<String, dynamic> map) {
    return BackendServiceIap(
      enabled: (map['enabled'] as bool).input(),
      oauth2ClientId: map['oauth2ClientId'] == null ? null : (map['oauth2ClientId'] as String).input(),
      oauth2ClientSecret: map['oauth2ClientSecret'] == null ? null : (map['oauth2ClientSecret'] as String).input(),
      oauth2ClientSecretSha256: map['oauth2ClientSecretSha256'] == null ? null : (map['oauth2ClientSecretSha256'] as String).input(),
    );
  }
}

