// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oauth_clients_result_client_uri_verification.dart';

class GetOauthClientsResult {
  /// Array of allowed CORS origins.
  final pulumi.Input<List<String>> allowedCorsOrigins;
  /// The unique identifier for an OAuth client.
  final pulumi.Input<String> clientId;
  /// Human-readable name of the OAuth client.
  final pulumi.Input<String> clientName;
  /// URL of the home page of the client.
  final pulumi.Input<String> clientUri;
  /// Client URI domain control verification state.
  final pulumi.Input<GetOauthClientsResultClientUriVerification> clientUriVerification;
  /// Timestamp when the OAuth client was created.
  final pulumi.Input<String> createdAt;
  /// Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  final pulumi.Input<List<String>> grantTypes;
  /// Indicates whether the client has a rotated secret that has not yet been deleted.
  final pulumi.Input<bool> hasRotatedSecret;
  /// URL of the client's logo.
  final pulumi.Input<String> logoUri;
  /// URL that points to a privacy policy document.
  final pulumi.Input<String> policyUri;
  /// Array of allowed post-logout redirect URIs.
  final pulumi.Input<List<String>> postLogoutRedirectUris;
  /// Timestamp when the OAuth client was promoted to public visibility.
  final pulumi.Input<String> promotedAt;
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
  final pulumi.Input<String> tosUri;
  /// Timestamp when the OAuth client was last updated.
  final pulumi.Input<String> updatedAt;
  /// Visibility of the OAuth client.
  /// Available values: "public", "private".
  final pulumi.Input<String> visibility;

  /// Creates a new [GetOauthClientsResult].
  /// [allowedCorsOrigins] Array of allowed CORS origins.
  /// [clientId] The unique identifier for an OAuth client.
  /// [clientName] Human-readable name of the OAuth client.
  /// [clientUri] URL of the home page of the client.
  /// [clientUriVerification] Client URI domain control verification state.
  /// [createdAt] Timestamp when the OAuth client was created.
  /// [grantTypes] Array of OAuth grant types the client is allowed to use. `authorizationCode` is required; `refreshToken` may be included optionally.
  /// [hasRotatedSecret] Indicates whether the client has a rotated secret that has not yet been deleted.
  /// [logoUri] URL of the client's logo.
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
  const GetOauthClientsResult({
    required this.allowedCorsOrigins,
    required this.clientId,
    required this.clientName,
    required this.clientUri,
    required this.clientUriVerification,
    required this.createdAt,
    required this.grantTypes,
    required this.hasRotatedSecret,
    required this.logoUri,
    required this.policyUri,
    required this.postLogoutRedirectUris,
    required this.promotedAt,
    required this.redirectUris,
    required this.responseTypes,
    required this.scopes,
    required this.tokenEndpointAuthMethod,
    required this.tosUri,
    required this.updatedAt,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCorsOrigins': allowedCorsOrigins,
      'clientId': clientId,
      'clientName': clientName,
      'clientUri': clientUri,
      'clientUriVerification': pulumi.Input.mapInputValue<GetOauthClientsResultClientUriVerification, Map<String, dynamic>>(clientUriVerification, (value) => value.toMap()),
      'createdAt': createdAt,
      'grantTypes': grantTypes,
      'hasRotatedSecret': hasRotatedSecret,
      'logoUri': logoUri,
      'policyUri': policyUri,
      'postLogoutRedirectUris': postLogoutRedirectUris,
      'promotedAt': promotedAt,
      'redirectUris': redirectUris,
      'responseTypes': responseTypes,
      'scopes': scopes,
      'tokenEndpointAuthMethod': tokenEndpointAuthMethod,
      'tosUri': tosUri,
      'updatedAt': updatedAt,
      'visibility': visibility,
    };
  }

  factory GetOauthClientsResult.fromMap(Map<String, dynamic> map) {
    return GetOauthClientsResult(
      allowedCorsOrigins: pulumi.Input.fromValue((map['allowedCorsOrigins'] as List).cast<String>()),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientName: pulumi.Input.fromValue(map['clientName'] as String),
      clientUri: pulumi.Input.fromValue(map['clientUri'] as String),
      clientUriVerification: pulumi.Input.fromValue(GetOauthClientsResultClientUriVerification.fromMap((map['clientUriVerification']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      grantTypes: pulumi.Input.fromValue((map['grantTypes'] as List).cast<String>()),
      hasRotatedSecret: pulumi.Input.fromValue(map['hasRotatedSecret'] as bool),
      logoUri: pulumi.Input.fromValue(map['logoUri'] as String),
      policyUri: pulumi.Input.fromValue(map['policyUri'] as String),
      postLogoutRedirectUris: pulumi.Input.fromValue((map['postLogoutRedirectUris'] as List).cast<String>()),
      promotedAt: pulumi.Input.fromValue(map['promotedAt'] as String),
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
      responseTypes: pulumi.Input.fromValue((map['responseTypes'] as List).cast<String>()),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tokenEndpointAuthMethod: pulumi.Input.fromValue(map['tokenEndpointAuthMethod'] as String),
      tosUri: pulumi.Input.fromValue(map['tosUri'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
