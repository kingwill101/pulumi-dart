// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_oauth2_auth_code_flow_client_secret.dart';

class ConnectionAuthConfigOauth2AuthCodeFlow {
  /// Auth URL for Authorization Code Flow.
  final pulumi.Input<String>? authUri;
  /// Client ID for user-provided OAuth app.
  final pulumi.Input<String>? clientId;
  /// Client secret for user-provided OAuth app.
  final pulumi.Input<ConnectionAuthConfigOauth2AuthCodeFlowClientSecret>? clientSecret;
  /// Whether to enable PKCE when the user performs the auth code flow.
  final pulumi.Input<bool>? enablePkce;
  /// Scopes the connection will request when the user performs the auth code flow.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ConnectionAuthConfigOauth2AuthCodeFlow].
  /// [authUri] Auth URL for Authorization Code Flow.
  /// [clientId] Client ID for user-provided OAuth app.
  /// [clientSecret] Client secret for user-provided OAuth app.
  /// [enablePkce] Whether to enable PKCE when the user performs the auth code flow.
  /// [scopes] Scopes the connection will request when the user performs the auth code flow.
  ConnectionAuthConfigOauth2AuthCodeFlow({
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authUri': ?authUri,
      'clientId': ?clientId,
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2AuthCodeFlowClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'enablePkce': ?enablePkce,
      'scopes': ?scopes,
    };
  }

  factory ConnectionAuthConfigOauth2AuthCodeFlow.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2AuthCodeFlow(
      authUri: map['authUri'] == null ? null : (map['authUri'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (ConnectionAuthConfigOauth2AuthCodeFlowClientSecret.fromMap((map['clientSecret'] as Map).cast<String, dynamic>())).input(),
      enablePkce: map['enablePkce'] == null ? null : (map['enablePkce'] as bool).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
    );
  }
}

