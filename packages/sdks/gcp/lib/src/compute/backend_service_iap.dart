// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendServiceIap {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 Client ID for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? oauth2ClientId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// OAuth2 Client ID for IAP
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `oauth2ClientId` or `oauth2ClientIdWo` can only be set.
  final pulumi.Input<String?>? oauth2ClientIdWo;
  /// Triggers update of `oauth2ClientIdWo` write-only. Increment this value when an update to `oauth2ClientIdWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? oauth2ClientIdWoVersion;
  /// OAuth2 Client Secret for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? oauth2ClientSecret;
  /// (Output)
  /// OAuth2 Client Secret SHA-256 for IAP
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? oauth2ClientSecretSha256;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// OAuth2 Client Secret for IAP
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `oauth2ClientSecret` or `oauth2ClientSecretWo` can only be set.
  final pulumi.Input<String?>? oauth2ClientSecretWo;
  /// Triggers update of `oauth2ClientSecretWo` write-only. Increment this value when an update to `oauth2ClientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? oauth2ClientSecretWoVersion;

  /// Creates a new [BackendServiceIap].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 Client ID for IAP
  /// [oauth2ClientIdWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauth2ClientIdWoVersion] Triggers update of `oauth2ClientIdWo` write-only. Increment this value when an update to `oauth2ClientIdWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [oauth2ClientSecret] OAuth2 Client Secret for IAP
  /// [oauth2ClientSecretSha256] (Output)
  /// [oauth2ClientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [oauth2ClientSecretWoVersion] Triggers update of `oauth2ClientSecretWo` write-only. Increment this value when an update to `oauth2ClientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  const BackendServiceIap({
    required this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientIdWo,
    this.oauth2ClientIdWoVersion,
    this.oauth2ClientSecret,
    this.oauth2ClientSecretSha256,
    this.oauth2ClientSecretWo,
    this.oauth2ClientSecretWoVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': ?oauth2ClientId,
      'oauth2ClientIdWo': ?oauth2ClientIdWo,
      'oauth2ClientIdWoVersion': ?oauth2ClientIdWoVersion,
      'oauth2ClientSecret': ?oauth2ClientSecret,
      'oauth2ClientSecretSha256': ?oauth2ClientSecretSha256,
      'oauth2ClientSecretWo': ?oauth2ClientSecretWo,
      'oauth2ClientSecretWoVersion': ?oauth2ClientSecretWoVersion,
    };
  }

  factory BackendServiceIap.fromMap(Map<String, dynamic> map) {
    return BackendServiceIap(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: (() { final guardedValue = map['oauth2ClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientIdWo: (() { final guardedValue = map['oauth2ClientIdWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientIdWoVersion: (() { final guardedValue = map['oauth2ClientIdWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecret: (() { final guardedValue = map['oauth2ClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretSha256: (() { final guardedValue = map['oauth2ClientSecretSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretWo: (() { final guardedValue = map['oauth2ClientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientSecretWoVersion: (() { final guardedValue = map['oauth2ClientSecretWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
