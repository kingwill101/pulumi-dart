// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsTwoLeggedOauth {
  /// The client ID of the OAuth client.
  final pulumi.Input<String?>? clientId;
  /// Input only. The client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Input only. The client secret of the OAuth client.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `clientSecret` or `clientSecretWo` can only be set.
  final pulumi.Input<String?>? clientSecretWo;
  /// Triggers update of `clientSecretWo` write-only. Increment this value when an update to `clientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? clientSecretWoVersion;
  /// The token endpoint of the OAuth client.
  final pulumi.Input<String?>? tokenUrl;

  /// Creates a new [AuthProviderAuthProviderTypeParamsTwoLeggedOauth].
  /// [clientId] The client ID of the OAuth client.
  /// [clientSecret] Input only. The client secret of the OAuth client.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecretWoVersion] Triggers update of `clientSecretWo` write-only. Increment this value when an update to `clientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [tokenUrl] The token endpoint of the OAuth client.
  const AuthProviderAuthProviderTypeParamsTwoLeggedOauth({
    this.clientId,
    this.clientSecret,
    this.clientSecretWo,
    this.clientSecretWoVersion,
    this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretWo': ?clientSecretWo,
      'clientSecretWoVersion': ?clientSecretWoVersion,
      'tokenUrl': ?tokenUrl,
    };
  }

  factory AuthProviderAuthProviderTypeParamsTwoLeggedOauth.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsTwoLeggedOauth(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWo: (() { final guardedValue = map['clientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWoVersion: (() { final guardedValue = map['clientSecretWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrl: (() { final guardedValue = map['tokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
