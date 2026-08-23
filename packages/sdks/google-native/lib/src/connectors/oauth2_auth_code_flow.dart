// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret.dart';

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class Oauth2AuthCodeFlow {
  /// Authorization code to be exchanged for access and refresh tokens.
  final pulumi.Input<String>? authCode;
  /// Auth URL for Authorization Code Flow
  final pulumi.Input<String>? authUri;
  /// Client ID for user-provided OAuth app.
  final pulumi.Input<String>? clientId;
  /// Client secret for user-provided OAuth app.
  final pulumi.Input<Secret>? clientSecret;
  /// Whether to enable PKCE when the user performs the auth code flow.
  final pulumi.Input<bool>? enablePkce;
  /// PKCE verifier to be used during the auth code exchange.
  final pulumi.Input<String>? pkceVerifier;
  /// Redirect URI to be provided during the auth code exchange.
  final pulumi.Input<String>? redirectUri;
  /// Scopes the connection will request when the user performs the auth code flow.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [Oauth2AuthCodeFlow].
  /// [authCode] Authorization code to be exchanged for access and refresh tokens.
  /// [authUri] Auth URL for Authorization Code Flow
  /// [clientId] Client ID for user-provided OAuth app.
  /// [clientSecret] Client secret for user-provided OAuth app.
  /// [enablePkce] Whether to enable PKCE when the user performs the auth code flow.
  /// [pkceVerifier] PKCE verifier to be used during the auth code exchange.
  /// [redirectUri] Redirect URI to be provided during the auth code exchange.
  /// [scopes] Scopes the connection will request when the user performs the auth code flow.
  const Oauth2AuthCodeFlow({
    this.authCode,
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'authUri': ?authUri,
      'clientId': ?clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<Secret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'enablePkce': ?enablePkce,
      'pkceVerifier': ?pkceVerifier,
      'redirectUri': ?redirectUri,
      'scopes': ?scopes,
    };
  }

  factory Oauth2AuthCodeFlow.fromMap(Map<String, dynamic> map) {
    return Oauth2AuthCodeFlow(
      authCode: (() { final guardedValue = map['authCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authUri: (() { final guardedValue = map['authUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Secret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enablePkce: (() { final guardedValue = map['enablePkce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pkceVerifier: (() { final guardedValue = map['pkceVerifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUri: (() { final guardedValue = map['redirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
