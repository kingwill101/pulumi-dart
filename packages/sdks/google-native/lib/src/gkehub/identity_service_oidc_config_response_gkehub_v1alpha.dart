// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfigResponseGkehubV1alpha {
  /// PEM-encoded CA for OIDC provider.
  final pulumi.Input<String> certificateAuthorityData;
  /// ID for OIDC client application.
  final pulumi.Input<String> clientId;
  /// Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  final pulumi.Input<String> clientSecret;
  /// Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  final pulumi.Input<bool> deployCloudConsoleProxy;
  /// Enable access token.
  final pulumi.Input<bool> enableAccessToken;
  /// Encrypted OIDC Client secret
  final pulumi.Input<String> encryptedClientSecret;
  /// Comma-separated list of key-value pairs.
  final pulumi.Input<String> extraParams;
  /// Prefix to prepend to group name.
  final pulumi.Input<String> groupPrefix;
  /// Claim in OIDC ID token that holds group information.
  final pulumi.Input<String> groupsClaim;
  /// URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  final pulumi.Input<String> issuerUri;
  /// Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  final pulumi.Input<String> kubectlRedirectUri;
  /// Comma-separated list of identifiers.
  final pulumi.Input<String> scopes;
  /// Claim in OIDC ID token that holds username.
  final pulumi.Input<String> userClaim;
  /// Prefix to prepend to user name.
  final pulumi.Input<String> userPrefix;

  /// Creates a new [IdentityServiceOidcConfigResponseGkehubV1alpha].
  /// [certificateAuthorityData] PEM-encoded CA for OIDC provider.
  /// [clientId] ID for OIDC client application.
  /// [clientSecret] Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  /// [deployCloudConsoleProxy] Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  /// [enableAccessToken] Enable access token.
  /// [encryptedClientSecret] Encrypted OIDC Client secret
  /// [extraParams] Comma-separated list of key-value pairs.
  /// [groupPrefix] Prefix to prepend to group name.
  /// [groupsClaim] Claim in OIDC ID token that holds group information.
  /// [issuerUri] URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  /// [kubectlRedirectUri] Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  /// [scopes] Comma-separated list of identifiers.
  /// [userClaim] Claim in OIDC ID token that holds username.
  /// [userPrefix] Prefix to prepend to user name.
  IdentityServiceOidcConfigResponseGkehubV1alpha({
    required this.certificateAuthorityData,
    required this.clientId,
    required this.clientSecret,
    required this.deployCloudConsoleProxy,
    required this.enableAccessToken,
    required this.encryptedClientSecret,
    required this.extraParams,
    required this.groupPrefix,
    required this.groupsClaim,
    required this.issuerUri,
    required this.kubectlRedirectUri,
    required this.scopes,
    required this.userClaim,
    required this.userPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityData': certificateAuthorityData,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'deployCloudConsoleProxy': deployCloudConsoleProxy,
      'enableAccessToken': enableAccessToken,
      'encryptedClientSecret': encryptedClientSecret,
      'extraParams': extraParams,
      'groupPrefix': groupPrefix,
      'groupsClaim': groupsClaim,
      'issuerUri': issuerUri,
      'kubectlRedirectUri': kubectlRedirectUri,
      'scopes': scopes,
      'userClaim': userClaim,
      'userPrefix': userPrefix,
    };
  }

  factory IdentityServiceOidcConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return IdentityServiceOidcConfigResponseGkehubV1alpha(
      certificateAuthorityData: (map['certificateAuthorityData'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      deployCloudConsoleProxy: (map['deployCloudConsoleProxy'] as bool).input(),
      enableAccessToken: (map['enableAccessToken'] as bool).input(),
      encryptedClientSecret: (map['encryptedClientSecret'] as String).input(),
      extraParams: (map['extraParams'] as String).input(),
      groupPrefix: (map['groupPrefix'] as String).input(),
      groupsClaim: (map['groupsClaim'] as String).input(),
      issuerUri: (map['issuerUri'] as String).input(),
      kubectlRedirectUri: (map['kubectlRedirectUri'] as String).input(),
      scopes: (map['scopes'] as String).input(),
      userClaim: (map['userClaim'] as String).input(),
      userPrefix: (map['userPrefix'] as String).input(),
    );
  }
}

