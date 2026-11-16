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
  /// Exactly one of `oauth2ClientSecret` or `oauth2ClientSecretWo` can be set.
  final pulumi.Input<String?>? oauth2ClientSecret;
  /// Hex-encoded SHA-256 hash of the client secret.
  final pulumi.Input<String?>? oauth2ClientSecretSha256;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OAuth2 client secret to use for the authentication flow.
  /// The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** Exactly one of `oauth2ClientSecret` or `oauth2ClientSecretWo` can be set.
  final pulumi.Input<String?>? oauth2ClientSecretWo;
  /// Triggers update of `oauth2ClientSecretWo` write-only. Increment this value when an update to `oauth2ClientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? oauth2ClientSecretWoVersion;

  /// Creates a new [ApplicationIap].
  /// [enabled] (Optional) Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow.
  /// [oauth2ClientSecretSha256] Hex-encoded SHA-256 hash of the client secret.
  /// [oauth2ClientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauth2ClientSecretWoVersion] Triggers update of `oauth2ClientSecretWo` write-only. Increment this value when an update to `oauth2ClientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const ApplicationIap({
    this.enabled,
    required this.oauth2ClientId,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
    this.oauth2ClientSecretWo,
    this.oauth2ClientSecretWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientSecret': ?oauth2ClientSecret,
      'oauth2ClientSecretSha256': ?oauth2ClientSecretSha256,
      'oauth2ClientSecretWo': ?oauth2ClientSecretWo,
      'oauth2ClientSecretWoVersion': ?oauth2ClientSecretWoVersion,
    };
  }

  factory ApplicationIap.fromMap(Map<String, dynamic> map) {
    return ApplicationIap(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientSecret: (() { final guardedValue = map['oauth2ClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretSha256: (() { final guardedValue = map['oauth2ClientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretWo: (() { final guardedValue = map['oauth2ClientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretWoVersion: (() { final guardedValue = map['oauth2ClientSecretWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
