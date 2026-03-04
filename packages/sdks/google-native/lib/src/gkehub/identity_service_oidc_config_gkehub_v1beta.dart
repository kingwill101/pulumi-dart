// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for OIDC Auth flow.
class IdentityServiceOidcConfigGkehubV1beta {
  /// PEM-encoded CA for OIDC provider.
  final pulumi.Input<String>? certificateAuthorityData;

  /// ID for OIDC client application.
  final pulumi.Input<String>? clientId;

  /// Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  final pulumi.Input<String>? clientSecret;

  /// Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  final pulumi.Input<bool>? deployCloudConsoleProxy;

  /// Enable access token.
  final pulumi.Input<bool>? enableAccessToken;

  /// Comma-separated list of key-value pairs.
  final pulumi.Input<String>? extraParams;

  /// Prefix to prepend to group name.
  final pulumi.Input<String>? groupPrefix;

  /// Claim in OIDC ID token that holds group information.
  final pulumi.Input<String>? groupsClaim;

  /// URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  final pulumi.Input<String>? issuerUri;

  /// Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  final pulumi.Input<String>? kubectlRedirectUri;

  /// Comma-separated list of identifiers.
  final pulumi.Input<String>? scopes;

  /// Claim in OIDC ID token that holds username.
  final pulumi.Input<String>? userClaim;

  /// Prefix to prepend to user name.
  final pulumi.Input<String>? userPrefix;

  /// Creates a new [IdentityServiceOidcConfigGkehubV1beta].
  /// [certificateAuthorityData] PEM-encoded CA for OIDC provider.
  /// [clientId] ID for OIDC client application.
  /// [clientSecret] Input only. Unencrypted OIDC client secret will be passed to the GKE Hub CLH.
  /// [deployCloudConsoleProxy] Flag to denote if reverse proxy is used to connect to auth provider. This flag should be set to true when provider is not reachable by Google Cloud Console.
  /// [enableAccessToken] Enable access token.
  /// [extraParams] Comma-separated list of key-value pairs.
  /// [groupPrefix] Prefix to prepend to group name.
  /// [groupsClaim] Claim in OIDC ID token that holds group information.
  /// [issuerUri] URI for the OIDC provider. This should point to the level below .well-known/openid-configuration.
  /// [kubectlRedirectUri] Registered redirect uri to redirect users going through OAuth flow using kubectl plugin.
  /// [scopes] Comma-separated list of identifiers.
  /// [userClaim] Claim in OIDC ID token that holds username.
  /// [userPrefix] Prefix to prepend to user name.
  IdentityServiceOidcConfigGkehubV1beta({
    this.certificateAuthorityData,
    this.clientId,
    this.clientSecret,
    this.deployCloudConsoleProxy,
    this.enableAccessToken,
    this.extraParams,
    this.groupPrefix,
    this.groupsClaim,
    this.issuerUri,
    this.kubectlRedirectUri,
    this.scopes,
    this.userClaim,
    this.userPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityData': ?certificateAuthorityData,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'deployCloudConsoleProxy': ?deployCloudConsoleProxy,
      'enableAccessToken': ?enableAccessToken,
      'extraParams': ?extraParams,
      'groupPrefix': ?groupPrefix,
      'groupsClaim': ?groupsClaim,
      'issuerUri': ?issuerUri,
      'kubectlRedirectUri': ?kubectlRedirectUri,
      'scopes': ?scopes,
      'userClaim': ?userClaim,
      'userPrefix': ?userPrefix,
    };
  }

  factory IdentityServiceOidcConfigGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentityServiceOidcConfigGkehubV1beta(
      certificateAuthorityData: (() {
        final guardedValue = map['certificateAuthorityData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deployCloudConsoleProxy: (() {
        final guardedValue = map['deployCloudConsoleProxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableAccessToken: (() {
        final guardedValue = map['enableAccessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      extraParams: (() {
        final guardedValue = map['extraParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupPrefix: (() {
        final guardedValue = map['groupPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupsClaim: (() {
        final guardedValue = map['groupsClaim'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issuerUri: (() {
        final guardedValue = map['issuerUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubectlRedirectUri: (() {
        final guardedValue = map['kubectlRedirectUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userClaim: (() {
        final guardedValue = map['userClaim'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPrefix: (() {
        final guardedValue = map['userPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
