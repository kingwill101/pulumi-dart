// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class Oauth2AuthCodeFlowResponse {
  /// Authorization code to be exchanged for access and refresh tokens.
  final pulumi.Input<String> authCode;
  /// Auth URL for Authorization Code Flow
  final pulumi.Input<String> authUri;
  /// Client ID for user-provided OAuth app.
  final pulumi.Input<String> clientId;
  /// Client secret for user-provided OAuth app.
  final pulumi.Input<SecretResponse> clientSecret;
  /// Whether to enable PKCE when the user performs the auth code flow.
  final pulumi.Input<bool> enablePkce;
  /// PKCE verifier to be used during the auth code exchange.
  final pulumi.Input<String> pkceVerifier;
  /// Redirect URI to be provided during the auth code exchange.
  final pulumi.Input<String> redirectUri;
  /// Scopes the connection will request when the user performs the auth code flow.
  final pulumi.Input<List<String>> scopes;

  /// Creates a new [Oauth2AuthCodeFlowResponse].
  /// [authCode] Authorization code to be exchanged for access and refresh tokens.
  /// [authUri] Auth URL for Authorization Code Flow
  /// [clientId] Client ID for user-provided OAuth app.
  /// [clientSecret] Client secret for user-provided OAuth app.
  /// [enablePkce] Whether to enable PKCE when the user performs the auth code flow.
  /// [pkceVerifier] PKCE verifier to be used during the auth code exchange.
  /// [redirectUri] Redirect URI to be provided during the auth code exchange.
  /// [scopes] Scopes the connection will request when the user performs the auth code flow.
  const Oauth2AuthCodeFlowResponse({
    required this.authCode,
    required this.authUri,
    required this.clientId,
    required this.clientSecret,
    required this.enablePkce,
    required this.pkceVerifier,
    required this.redirectUri,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': authCode,
      'authUri': authUri,
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'enablePkce': enablePkce,
      'pkceVerifier': pkceVerifier,
      'redirectUri': redirectUri,
      'scopes': scopes,
    };
  }

  factory Oauth2AuthCodeFlowResponse.fromMap(Map<String, dynamic> map) {
    return Oauth2AuthCodeFlowResponse(
      authCode: pulumi.Input.fromValue(map['authCode'] as String),
      authUri: pulumi.Input.fromValue(map['authUri'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(SecretResponse.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())),
      enablePkce: pulumi.Input.fromValue(map['enablePkce'] as bool),
      pkceVerifier: pulumi.Input.fromValue(map['pkceVerifier'] as String),
      redirectUri: pulumi.Input.fromValue(map['redirectUri'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
    );
  }
}
