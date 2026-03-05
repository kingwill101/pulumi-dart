// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with OAuth2.
class OAuthModel {
  /// Access token prepend. Default is 'Bearer'.
  final pulumi.Input<String>? accessTokenPrepend;
  /// The user's authorization code.
  final pulumi.Input<String>? authorizationCode;
  /// The authorization endpoint.
  final pulumi.Input<String>? authorizationEndpoint;
  /// The authorization endpoint headers.
  final pulumi.Input<Map<String, String>>? authorizationEndpointHeaders;
  /// The authorization endpoint query parameters.
  final pulumi.Input<Map<String, String>>? authorizationEndpointQueryParameters;
  /// The Application (client) ID that the OAuth provider assigned to your app.
  final pulumi.Input<String> clientId;
  /// The Application (client) secret that the OAuth provider assigned to your app.
  final pulumi.Input<String> clientSecret;
  /// The grant type, usually will be 'authorization code'.
  final pulumi.Input<String> grantType;
  /// Indicating whether we want to send the clientId and clientSecret to token endpoint in the headers.
  final pulumi.Input<bool>? isCredentialsInHeaders;
  /// A value indicating whether it's a JWT flow.
  final pulumi.Input<bool>? isJwtBearerFlow;
  /// The Application redirect url that the user config in the OAuth provider.
  final pulumi.Input<String>? redirectUri;
  /// The Application (client) Scope that the OAuth provider assigned to your app.
  final pulumi.Input<String>? scope;
  /// The token endpoint. Defines the OAuth2 refresh token.
  final pulumi.Input<String> tokenEndpoint;
  /// The token endpoint headers.
  final pulumi.Input<Map<String, String>>? tokenEndpointHeaders;
  /// The token endpoint query parameters.
  final pulumi.Input<Map<String, String>>? tokenEndpointQueryParameters;
  /// Type of paging
  /// Expected value is 'OAuth2'.
  final pulumi.Input<String> type;

  /// Creates a new [OAuthModel].
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
  OAuthModel({
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

  factory OAuthModel.fromMap(Map<String, dynamic> map) {
    return OAuthModel(
      accessTokenPrepend: (() { final guardedValue = map['accessTokenPrepend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationCode: (() { final guardedValue = map['authorizationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationEndpointHeaders: (() { final guardedValue = map['authorizationEndpointHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authorizationEndpointQueryParameters: (() { final guardedValue = map['authorizationEndpointQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      grantType: pulumi.Input.fromValue(map['grantType'] as String),
      isCredentialsInHeaders: (() { final guardedValue = map['isCredentialsInHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isJwtBearerFlow: (() { final guardedValue = map['isJwtBearerFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      tokenEndpointHeaders: (() { final guardedValue = map['tokenEndpointHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tokenEndpointQueryParameters: (() { final guardedValue = map['tokenEndpointQueryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

