// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 Client ID for IAP
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 Client Secret for IAP
  final pulumi.Input<String> oauth2ClientSecret;
  /// OAuth2 Client Secret SHA-256 for IAP
  final pulumi.Input<String> oauth2ClientSecretSha256;

  /// Creates a new [GetRegionBackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] OAuth2 Client Secret SHA-256 for IAP
  GetRegionBackendServiceIap({
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

  factory GetRegionBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceIap(
      enabled: (map['enabled'] as bool).input(),
      oauth2ClientId: (map['oauth2ClientId'] as String).input(),
      oauth2ClientSecret: (map['oauth2ClientSecret'] as String).input(),
      oauth2ClientSecretSha256: (map['oauth2ClientSecretSha256'] as String).input(),
    );
  }
}

