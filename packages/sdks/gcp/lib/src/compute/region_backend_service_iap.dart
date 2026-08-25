// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 Client ID for IAP
  final pulumi.Input<String?>? oauth2ClientId;
  /// OAuth2 Client Secret for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? oauth2ClientSecret;
  /// (Output)
  /// OAuth2 Client Secret SHA-256 for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? oauth2ClientSecretSha256;

  /// Creates a new [RegionBackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] (Output)
  const RegionBackendServiceIap({
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

  factory RegionBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceIap(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: (() { final guardedValue = map['oauth2ClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecret: (() { final guardedValue = map['oauth2ClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretSha256: (() { final guardedValue = map['oauth2ClientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
