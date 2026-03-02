// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthConfigDecryptedCredentialOauth2AuthorizationCode {
  /// The auth url endpoint to send the auth code request to.
  final pulumi.Input<String>? authEndpoint;
  /// The client's id.
  final pulumi.Input<String>? clientId;
  /// The client's secret.
  final pulumi.Input<String>? clientSecret;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String>? scope;
  /// The token url endpoint to send the token request to.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCode].
  /// [authEndpoint] The auth url endpoint to send the auth code request to.
  /// [clientId] The client's id.
  /// [clientSecret] The client's secret.
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token url endpoint to send the token request to.
  AuthConfigDecryptedCredentialOauth2AuthorizationCode({
    this.authEndpoint,
    this.clientId,
    this.clientSecret,
    this.scope,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authEndpoint': ?authEndpoint,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCode(
      authEndpoint: map['authEndpoint'] == null ? null : (map['authEndpoint']! as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint']! as String).input(),
    );
  }
}

