// ignore_for_file: unused_element, unnecessary_cast

import 'get_oauth_client_client_uri_verification.dart';

/// Result data returned by getOauthClient.
class GetOauthClientResult {
  /// Account identifier tag.
  final String? accountId;
  /// Array of allowed CORS origins.
  final List<String>? allowedCorsOrigins;
  /// The unique identifier for an OAuth client.
  final String? clientId;
  /// Human-readable name of the OAuth client.
  final String? clientName;
  /// URL of the home page of the client.
  final String? clientUri;
  /// Client URI domain control verification state.
  final GetOauthClientClientUriVerification? clientUriVerification;
  /// Timestamp when the OAuth client was created.
  final String? createdAt;
  /// Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  final List<String>? grantTypes;
  /// Indicates whether the client has a rotated secret that has not yet been deleted.
  final bool? hasRotatedSecret;
  /// URL of the client's logo.
  final String? logoUri;
  /// The unique identifier for an OAuth client.
  final String? oauthClientId;
  /// URL that points to a privacy policy document.
  final String? policyUri;
  /// Array of allowed post-logout redirect URIs.
  final List<String>? postLogoutRedirectUris;
  /// Timestamp when the OAuth client was promoted to public visibility.
  final String? promotedAt;
  /// Array of allowed redirect URIs for the client.
  final List<String>? redirectUris;
  /// Array of OAuth response types the client is allowed to use.
  final List<String>? responseTypes;
  /// Array of OAuth scopes the client is allowed to request. Colon-delimited scopes are not accepted. Dot-delimited scopes are validated against available OAuth API scopes; simple identity scopes are allowed. Protocol scopes `offlineAccess` and `openid` are added or removed automatically based on `grantTypes` and `responseTypes`.
  final List<String>? scopes;
  /// The authentication method the client uses at the token endpoint.
  /// Available values: "none", "client*secret*basic", "client*secret*post".
  final String? tokenEndpointAuthMethod;
  /// URL that points to a terms of service document.
  final String? tosUri;
  /// Timestamp when the OAuth client was last updated.
  final String? updatedAt;
  /// Visibility of the OAuth client.
  /// Available values: "public", "private".
  final String? visibility;

  /// Creates a new [GetOauthClientResult].
  /// [accountId] Account identifier tag.
  /// [allowedCorsOrigins] Array of allowed CORS origins.
  /// [clientId] The unique identifier for an OAuth client.
  /// [clientName] Human-readable name of the OAuth client.
  /// [clientUri] URL of the home page of the client.
  /// [clientUriVerification] Client URI domain control verification state.
  /// [createdAt] Timestamp when the OAuth client was created.
  /// [grantTypes] Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  /// [hasRotatedSecret] Indicates whether the client has a rotated secret that has not yet been deleted.
  /// [logoUri] URL of the client's logo.
  /// [oauthClientId] The unique identifier for an OAuth client.
  /// [policyUri] URL that points to a privacy policy document.
  /// [postLogoutRedirectUris] Array of allowed post-logout redirect URIs.
  /// [promotedAt] Timestamp when the OAuth client was promoted to public visibility.
  /// [redirectUris] Array of allowed redirect URIs for the client.
  /// [responseTypes] Array of OAuth response types the client is allowed to use.
  /// [scopes] Array of OAuth scopes the client is allowed to request. Colon-delimited scopes are not accepted. Dot-delimited scopes are validated against available OAuth API scopes; simple identity scopes are allowed. Protocol scopes `offlineAccess` and `openid` are added or removed automatically based on `grantTypes` and `responseTypes`.
  /// [tokenEndpointAuthMethod] The authentication method the client uses at the token endpoint.
  /// [tosUri] URL that points to a terms of service document.
  /// [updatedAt] Timestamp when the OAuth client was last updated.
  /// [visibility] Visibility of the OAuth client.
  const GetOauthClientResult({
    this.accountId,
    this.allowedCorsOrigins,
    this.clientId,
    this.clientName,
    this.clientUri,
    this.clientUriVerification,
    this.createdAt,
    this.grantTypes,
    this.hasRotatedSecret,
    this.logoUri,
    this.oauthClientId,
    this.policyUri,
    this.postLogoutRedirectUris,
    this.promotedAt,
    this.redirectUris,
    this.responseTypes,
    this.scopes,
    this.tokenEndpointAuthMethod,
    this.tosUri,
    this.updatedAt,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowedCorsOrigins': ?allowedCorsOrigins,
      'clientId': ?clientId,
      'clientName': ?clientName,
      'clientUri': ?clientUri,
      'clientUriVerification': ?clientUriVerification?.toMap(),
      'createdAt': ?createdAt,
      'grantTypes': ?grantTypes,
      'hasRotatedSecret': ?hasRotatedSecret,
      'logoUri': ?logoUri,
      'oauthClientId': ?oauthClientId,
      'policyUri': ?policyUri,
      'postLogoutRedirectUris': ?postLogoutRedirectUris,
      'promotedAt': ?promotedAt,
      'redirectUris': ?redirectUris,
      'responseTypes': ?responseTypes,
      'scopes': ?scopes,
      'tokenEndpointAuthMethod': ?tokenEndpointAuthMethod,
      'tosUri': ?tosUri,
      'updatedAt': ?updatedAt,
      'visibility': ?visibility,
    };
  }

  factory GetOauthClientResult.fromMap(Map<String, dynamic> map) {
    return GetOauthClientResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowedCorsOrigins: (() { final guardedValue = map['allowedCorsOrigins']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientName: (() { final guardedValue = map['clientName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientUri: (() { final guardedValue = map['clientUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientUriVerification: (() { final guardedValue = map['clientUriVerification']; if (guardedValue == null) return null; return GetOauthClientClientUriVerification.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grantTypes: (() { final guardedValue = map['grantTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hasRotatedSecret: (() { final guardedValue = map['hasRotatedSecret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logoUri: (() { final guardedValue = map['logoUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oauthClientId: (() { final guardedValue = map['oauthClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyUri: (() { final guardedValue = map['policyUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      postLogoutRedirectUris: (() { final guardedValue = map['postLogoutRedirectUris']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      promotedAt: (() { final guardedValue = map['promotedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      responseTypes: (() { final guardedValue = map['responseTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tokenEndpointAuthMethod: (() { final guardedValue = map['tokenEndpointAuthMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tosUri: (() { final guardedValue = map['tosUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
