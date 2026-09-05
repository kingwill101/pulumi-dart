// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 Client ID for IAP
  final pulumi.Input<String> oauth2ClientId;
  /// OAuth2 Client ID for IAP
  final pulumi.Input<String> oauth2ClientIdWo;
  /// Triggers update of 'oauth2_client_id_wo' write-only. Increment this value when an update to 'oauth2_client_id_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> oauth2ClientIdWoVersion;
  /// OAuth2 Client Secret for IAP
  final pulumi.Input<String> oauth2ClientSecret;
  /// OAuth2 Client Secret SHA-256 for IAP
  final pulumi.Input<String> oauth2ClientSecretSha256;
  /// OAuth2 Client Secret for IAP
  final pulumi.Input<String> oauth2ClientSecretWo;
  /// Triggers update of 'oauth2_client_secret_wo' write-only. Increment this value when an update to 'oauth2_client_secret_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> oauth2ClientSecretWoVersion;

  /// Creates a new [GetBackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientIdWo] OAuth2 Client ID for IAP
  /// [oauth2ClientIdWoVersion] Triggers update of 'oauth2_client_id_wo' write-only. Increment this value when an update to 'oauth2_client_id_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] OAuth2 Client Secret SHA-256 for IAP
  /// [oauth2ClientSecretWo] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretWoVersion] Triggers update of 'oauth2_client_secret_wo' write-only. Increment this value when an update to 'oauth2_client_secret_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const GetBackendServiceIap({
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientIdWo,
    required this.oauth2ClientIdWoVersion,
    required this.oauth2ClientSecret,
    required this.oauth2ClientSecretSha256,
    required this.oauth2ClientSecretWo,
    required this.oauth2ClientSecretWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientIdWo': oauth2ClientIdWo,
      'oauth2ClientIdWoVersion': oauth2ClientIdWoVersion,
      'oauth2ClientSecret': oauth2ClientSecret,
      'oauth2ClientSecretSha256': oauth2ClientSecretSha256,
      'oauth2ClientSecretWo': oauth2ClientSecretWo,
      'oauth2ClientSecretWoVersion': oauth2ClientSecretWoVersion,
    };
  }

  factory GetBackendServiceIap.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceIap(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientIdWo: pulumi.Input.fromValue(map['oauth2ClientIdWo'] as String),
      oauth2ClientIdWoVersion: pulumi.Input.fromValue(map['oauth2ClientIdWoVersion'] as String),
      oauth2ClientSecret: pulumi.Input.fromValue(map['oauth2ClientSecret'] as String),
      oauth2ClientSecretSha256: pulumi.Input.fromValue(map['oauth2ClientSecretSha256'] as String),
      oauth2ClientSecretWo: pulumi.Input.fromValue(map['oauth2ClientSecretWo'] as String),
      oauth2ClientSecretWoVersion: pulumi.Input.fromValue(map['oauth2ClientSecretWoVersion'] as String),
    );
  }
}
