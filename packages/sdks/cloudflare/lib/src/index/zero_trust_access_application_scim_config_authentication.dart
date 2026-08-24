// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationScimConfigAuthentication {
  /// URL used to generate the auth code used during token generation.
  final pulumi.Input<String?>? authorizationUrl;
  /// Client ID used to authenticate when generating a token for authenticating with the remote SCIM service.
  final pulumi.Input<String?>? clientId;
  /// Secret used to authenticate when generating a token for authenticating with the remove SCIM service.
  final pulumi.Input<String?>? clientSecret;
  /// Password used to authenticate with the remote SCIM service.
  final pulumi.Input<String?>? password;
  /// The authentication scheme to use when making SCIM requests to this application.
  /// Available values: "httpbasic", "oauthbearertoken", "oauth2", "access*service*token".
  final pulumi.Input<String> scheme;
  /// The authorization scopes to request when generating the token used to authenticate with the remove SCIM service.
  final pulumi.Input<List<String>?>? scopes;
  /// Token used to authenticate with the remote SCIM service.
  final pulumi.Input<String?>? token;
  /// URL used to generate the token used to authenticate with the remote SCIM service.
  final pulumi.Input<String?>? tokenUrl;
  /// User name used to authenticate with the remote SCIM service.
  final pulumi.Input<String?>? user;

  /// Creates a new [ZeroTrustAccessApplicationScimConfigAuthentication].
  /// [authorizationUrl] URL used to generate the auth code used during token generation.
  /// [clientId] Client ID used to authenticate when generating a token for authenticating with the remote SCIM service.
  /// [clientSecret] Secret used to authenticate when generating a token for authenticating with the remove SCIM service.
  /// [password] Password used to authenticate with the remote SCIM service.
  /// [scheme] The authentication scheme to use when making SCIM requests to this application.
  /// [scopes] The authorization scopes to request when generating the token used to authenticate with the remove SCIM service.
  /// [token] Token used to authenticate with the remote SCIM service.
  /// [tokenUrl] URL used to generate the token used to authenticate with the remote SCIM service.
  /// [user] User name used to authenticate with the remote SCIM service.
  const ZeroTrustAccessApplicationScimConfigAuthentication({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.password,
    required this.scheme,
    this.scopes,
    this.token,
    this.tokenUrl,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationUrl': ?authorizationUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'password': ?password,
      'scheme': scheme,
      'scopes': ?scopes,
      'token': ?token,
      'tokenUrl': ?tokenUrl,
      'user': ?user,
    };
  }

  factory ZeroTrustAccessApplicationScimConfigAuthentication.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationScimConfigAuthentication(
      authorizationUrl: (() { final guardedValue = map['authorizationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrl: (() { final guardedValue = map['tokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
