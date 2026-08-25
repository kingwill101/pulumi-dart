// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsThreeLeggedOauth {
  /// The authorization endpoint to send users to for consenting to delegate
  /// to the agent.
  /// eg. "https://auth.atlassian.com/authorize"
  final pulumi.Input<String?>? authorizationUrl;
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
  /// The default continue URI for 3LO flow and it will be used when no continue
  /// URI is provided in the RetrieveCredentials request.
  final pulumi.Input<String?>? defaultContinueUri;
  /// Enables Proof Key for Code Exchange (PKCE) for the OAuth flow to prevent
  /// authorization code interception attacks.
  final pulumi.Input<bool?>? enablePkce;
  /// (Output)
  /// The redirect URL this authProvider uses for the OAuth exchange.
  /// This is deterministic based on the name of the auth_provider.
  final pulumi.Input<String?>? redirectUrl;
  /// The token endpoint for requesting tokens on behalf of an end user.
  /// eg. "https://auth.atlassian.com/oauth/token"
  final pulumi.Input<String?>? tokenUrl;

  /// Creates a new [AuthProviderAuthProviderTypeParamsThreeLeggedOauth].
  /// [authorizationUrl] The authorization endpoint to send users to for consenting to delegate
  /// [clientId] The client ID of the OAuth client.
  /// [clientSecret] Input only. The client secret of the OAuth client.
  /// [clientSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [clientSecretWoVersion] Triggers update of `clientSecretWo` write-only. Increment this value when an update to `clientSecretWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [defaultContinueUri] The default continue URI for 3LO flow and it will be used when no continue
  /// [enablePkce] Enables Proof Key for Code Exchange (PKCE) for the OAuth flow to prevent
  /// [redirectUrl] (Output)
  /// [tokenUrl] The token endpoint for requesting tokens on behalf of an end user.
  const AuthProviderAuthProviderTypeParamsThreeLeggedOauth({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.clientSecretWo,
    this.clientSecretWoVersion,
    this.defaultContinueUri,
    this.enablePkce,
    this.redirectUrl,
    this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationUrl': ?authorizationUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretWo': ?clientSecretWo,
      'clientSecretWoVersion': ?clientSecretWoVersion,
      'defaultContinueUri': ?defaultContinueUri,
      'enablePkce': ?enablePkce,
      'redirectUrl': ?redirectUrl,
      'tokenUrl': ?tokenUrl,
    };
  }

  factory AuthProviderAuthProviderTypeParamsThreeLeggedOauth.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsThreeLeggedOauth(
      authorizationUrl: (() { final guardedValue = map['authorizationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWo: (() { final guardedValue = map['clientSecretWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretWoVersion: (() { final guardedValue = map['clientSecretWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultContinueUri: (() { final guardedValue = map['defaultContinueUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePkce: (() { final guardedValue = map['enablePkce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrl: (() { final guardedValue = map['tokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
