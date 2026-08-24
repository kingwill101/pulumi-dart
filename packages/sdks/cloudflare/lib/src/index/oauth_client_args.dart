// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_oauth_client_oauth_client_args_doc}
/// The set of arguments for OauthClient.
/// {@endtemplate}
/// {@macro pulumi_index_oauth_client_oauth_client_args_doc}
class OauthClientArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Array of allowed CORS origins.
  final pulumi.Input<List<String>?>? allowedCorsOrigins;
  /// Human-readable name of the OAuth client.
  final pulumi.Input<String> clientName;
  /// URL of the home page of the client.
  final pulumi.Input<String?>? clientUri;
  /// Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  final pulumi.Input<List<String>> grantTypes;
  /// URL of the client's logo.
  final pulumi.Input<String?>? logoUri;
  /// The unique identifier for an OAuth client.
  final pulumi.Input<String?>? oauthClientId;
  /// URL that points to a privacy policy document.
  final pulumi.Input<String?>? policyUri;
  /// Array of allowed post-logout redirect URIs.
  final pulumi.Input<List<String>?>? postLogoutRedirectUris;
  /// Array of allowed redirect URIs for the client.
  final pulumi.Input<List<String>> redirectUris;
  /// Array of OAuth response types the client is allowed to use.
  final pulumi.Input<List<String>> responseTypes;
  /// Array of OAuth scopes the client is allowed to request. Colon-delimited scopes are not accepted. Dot-delimited scopes are validated against available OAuth API scopes; simple identity scopes are allowed. Protocol scopes `offlineAccess` and `openid` are added or removed automatically based on `grantTypes` and `responseTypes`.
  final pulumi.Input<List<String>> scopes;
  /// The authentication method the client uses at the token endpoint.
  /// Available values: "none", "client*secret*basic", "client*secret*post".
  final pulumi.Input<String> tokenEndpointAuthMethod;
  /// URL that points to a terms of service document.
  final pulumi.Input<String?>? tosUri;
  /// Promote the OAuth client from private to public visibility. Only `public` is accepted; demotion to `private` is not supported. Promotion requires a non-empty client name, logo URI, verified client URI host, and at least one non-identity scope.
  /// Available values: "public".
  final pulumi.Input<String?>? visibility;

  /// Creates a new [OauthClientArgs].
  /// [accountId] Account identifier tag.
  /// [allowedCorsOrigins] Array of allowed CORS origins.
  /// [clientName] Human-readable name of the OAuth client.
  /// [clientUri] URL of the home page of the client.
  /// [grantTypes] Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  /// [logoUri] URL of the client's logo.
  /// [oauthClientId] The unique identifier for an OAuth client.
  /// [policyUri] URL that points to a privacy policy document.
  /// [postLogoutRedirectUris] Array of allowed post-logout redirect URIs.
  /// [redirectUris] Array of allowed redirect URIs for the client.
  /// [responseTypes] Array of OAuth response types the client is allowed to use.
  /// [scopes] Array of OAuth scopes the client is allowed to request. Colon-delimited scopes are not accepted. Dot-delimited scopes are validated against available OAuth API scopes; simple identity scopes are allowed. Protocol scopes `offlineAccess` and `openid` are added or removed automatically based on `grantTypes` and `responseTypes`.
  /// [tokenEndpointAuthMethod] The authentication method the client uses at the token endpoint.
  /// [tosUri] URL that points to a terms of service document.
  /// [visibility] Promote the OAuth client from private to public visibility. Only `public` is accepted; demotion to `private` is not supported. Promotion requires a non-empty client name, logo URI, verified client URI host, and at least one non-identity scope.
  const OauthClientArgs({
    required this.accountId,
    this.allowedCorsOrigins,
    required this.clientName,
    this.clientUri,
    required this.grantTypes,
    this.logoUri,
    this.oauthClientId,
    this.policyUri,
    this.postLogoutRedirectUris,
    required this.redirectUris,
    required this.responseTypes,
    required this.scopes,
    required this.tokenEndpointAuthMethod,
    this.tosUri,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'allowedCorsOrigins': ?allowedCorsOrigins,
      'clientName': clientName,
      'clientUri': ?clientUri,
      'grantTypes': grantTypes,
      'logoUri': ?logoUri,
      'oauthClientId': ?oauthClientId,
      'policyUri': ?policyUri,
      'postLogoutRedirectUris': ?postLogoutRedirectUris,
      'redirectUris': redirectUris,
      'responseTypes': responseTypes,
      'scopes': scopes,
      'tokenEndpointAuthMethod': tokenEndpointAuthMethod,
      'tosUri': ?tosUri,
      'visibility': ?visibility,
    };
  }

  factory OauthClientArgs.fromMap(Map<String, dynamic> map) {
    return OauthClientArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      allowedCorsOrigins: (() { final guardedValue = map['allowedCorsOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientName: pulumi.Input.fromValue(map['clientName'] as String),
      clientUri: (() { final guardedValue = map['clientUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantTypes: pulumi.Input.fromValue((map['grantTypes'] as List).cast<String>()),
      logoUri: (() { final guardedValue = map['logoUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientId: (() { final guardedValue = map['oauthClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyUri: (() { final guardedValue = map['policyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postLogoutRedirectUris: (() { final guardedValue = map['postLogoutRedirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
      responseTypes: pulumi.Input.fromValue((map['responseTypes'] as List).cast<String>()),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tokenEndpointAuthMethod: pulumi.Input.fromValue(map['tokenEndpointAuthMethod'] as String),
      tosUri: (() { final guardedValue = map['tosUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
