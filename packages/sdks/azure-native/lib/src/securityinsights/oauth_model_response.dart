// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with OAuth2.
class OAuthModelResponse {
  /// Access token prepend. Default is 'Bearer'.
  final String? accessTokenPrepend;
  /// The user's authorization code.
  final String? authorizationCode;
  /// The authorization endpoint.
  final String? authorizationEndpoint;
  /// The authorization endpoint headers.
  final Map<String, String>? authorizationEndpointHeaders;
  /// The authorization endpoint query parameters.
  final Map<String, String>? authorizationEndpointQueryParameters;
  /// The Application (client) ID that the OAuth provider assigned to your app.
  final String clientId;
  /// The Application (client) secret that the OAuth provider assigned to your app.
  final String clientSecret;
  /// The grant type, usually will be 'authorization code'.
  final String grantType;
  /// Indicating whether we want to send the clientId and clientSecret to token endpoint in the headers.
  final bool? isCredentialsInHeaders;
  /// A value indicating whether it's a JWT flow.
  final bool? isJwtBearerFlow;
  /// The Application redirect url that the user config in the OAuth provider.
  final String? redirectUri;
  /// The Application (client) Scope that the OAuth provider assigned to your app.
  final String? scope;
  /// The token endpoint. Defines the OAuth2 refresh token.
  final String tokenEndpoint;
  /// The token endpoint headers.
  final Map<String, String>? tokenEndpointHeaders;
  /// The token endpoint query parameters.
  final Map<String, String>? tokenEndpointQueryParameters;
  /// Type of paging
  /// Expected value is 'OAuth2'.
  final String type;

  /// Creates a new [OAuthModelResponse].
  /// [accessTokenPrepend] Access token prepend. Default is 'Bearer'.
  /// [authorizationCode] The user's authorization code.
  /// [authorizationEndpoint] The authorization endpoint.
  /// [authorizationEndpointHeaders] The authorization endpoint headers.
  /// [authorizationEndpointQueryParameters] The authorization endpoint query parameters.
  /// [clientId] The Application (client) ID that the OAuth provider assigned to your app.
  /// [clientSecret] The Application (client) secret that the OAuth provider assigned to your app.
  /// [grantType] The grant type, usually will be 'authorization code'.
  /// [isCredentialsInHeaders] Indicating whether we want to send the clientId and clientSecret to token endpoint in the headers.
  /// [isJwtBearerFlow] A value indicating whether it's a JWT flow.
  /// [redirectUri] The Application redirect url that the user config in the OAuth provider.
  /// [scope] The Application (client) Scope that the OAuth provider assigned to your app.
  /// [tokenEndpoint] The token endpoint. Defines the OAuth2 refresh token.
  /// [tokenEndpointHeaders] The token endpoint headers.
  /// [tokenEndpointQueryParameters] The token endpoint query parameters.
  /// [type] Type of paging
  OAuthModelResponse({
    this.accessTokenPrepend,
    this.authorizationCode,
    this.authorizationEndpoint,
    this.authorizationEndpointHeaders,
    this.authorizationEndpointQueryParameters,
    required this.clientId,
    required this.clientSecret,
    required this.grantType,
    this.isCredentialsInHeaders,
    this.isJwtBearerFlow,
    this.redirectUri,
    this.scope,
    required this.tokenEndpoint,
    this.tokenEndpointHeaders,
    this.tokenEndpointQueryParameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenPrepend': ?accessTokenPrepend,
      'authorizationCode': ?authorizationCode,
      'authorizationEndpoint': ?authorizationEndpoint,
      'authorizationEndpointHeaders': ?authorizationEndpointHeaders,
      'authorizationEndpointQueryParameters': ?authorizationEndpointQueryParameters,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'grantType': grantType,
      'isCredentialsInHeaders': ?isCredentialsInHeaders,
      'isJwtBearerFlow': ?isJwtBearerFlow,
      'redirectUri': ?redirectUri,
      'scope': ?scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenEndpointHeaders': ?tokenEndpointHeaders,
      'tokenEndpointQueryParameters': ?tokenEndpointQueryParameters,
      'type': type,
    };
  }

  factory OAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return OAuthModelResponse(
      accessTokenPrepend: map['accessTokenPrepend'] == null ? null : map['accessTokenPrepend'] as String,
      authorizationCode: map['authorizationCode'] == null ? null : map['authorizationCode'] as String,
      authorizationEndpoint: map['authorizationEndpoint'] == null ? null : map['authorizationEndpoint'] as String,
      authorizationEndpointHeaders: map['authorizationEndpointHeaders'] == null ? null : (map['authorizationEndpointHeaders'] as Map).cast<String, String>(),
      authorizationEndpointQueryParameters: map['authorizationEndpointQueryParameters'] == null ? null : (map['authorizationEndpointQueryParameters'] as Map).cast<String, String>(),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      grantType: map['grantType'] as String,
      isCredentialsInHeaders: map['isCredentialsInHeaders'] == null ? null : map['isCredentialsInHeaders'] as bool,
      isJwtBearerFlow: map['isJwtBearerFlow'] == null ? null : map['isJwtBearerFlow'] as bool,
      redirectUri: map['redirectUri'] == null ? null : map['redirectUri'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
      tokenEndpointHeaders: map['tokenEndpointHeaders'] == null ? null : (map['tokenEndpointHeaders'] as Map).cast<String, String>(),
      tokenEndpointQueryParameters: map['tokenEndpointQueryParameters'] == null ? null : (map['tokenEndpointQueryParameters'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

