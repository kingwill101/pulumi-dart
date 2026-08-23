// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the AzureAD Auth flow.
class IdentityServiceAzureADConfigGkehubV1beta {
  /// ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  final pulumi.Input<String>? clientId;
  /// Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  final pulumi.Input<String>? clientSecret;
  /// The redirect URL that kubectl uses for authorization.
  final pulumi.Input<String>? kubectlRedirectUri;
  /// Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  final pulumi.Input<String>? tenant;

  /// Creates a new [IdentityServiceAzureADConfigGkehubV1beta].
  /// [clientId] ID for the registered client application that makes authentication requests to the Azure AD identity provider.
  /// [clientSecret] Input only. Unencrypted AzureAD client secret will be passed to the GKE Hub CLH.
  /// [kubectlRedirectUri] The redirect URL that kubectl uses for authorization.
  /// [tenant] Kind of Azure AD account to be authenticated. Supported values are or for accounts belonging to a specific tenant.
  const IdentityServiceAzureADConfigGkehubV1beta({
    this.clientId,
    this.clientSecret,
    this.kubectlRedirectUri,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'tenant': ?tenant,
    };
  }

  factory IdentityServiceAzureADConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAzureADConfigGkehubV1beta(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubectlRedirectUri: (() { final guardedValue = map['kubectlRedirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
