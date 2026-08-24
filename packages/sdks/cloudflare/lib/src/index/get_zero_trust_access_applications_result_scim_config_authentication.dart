// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultScimConfigAuthentication {
  /// URL used to generate the auth code used during token generation.
  final pulumi.Input<String> authorizationUrl;
  /// Client ID used to authenticate when generating a token for authenticating with the remote SCIM service.
  final pulumi.Input<String> clientId;
  /// Secret used to authenticate when generating a token for authenticating with the remove SCIM service.
  final pulumi.Input<String> clientSecret;
  /// Password used to authenticate with the remote SCIM service.
  final pulumi.Input<String> password;
  /// The authentication scheme to use when making SCIM requests to this application.
  /// Available values: "httpbasic", "oauthbearertoken", "oauth2", "access*service*token".
  final pulumi.Input<String> scheme;
  /// The authorization scopes to request when generating the token used to authenticate with the remove SCIM service.
  final pulumi.Input<List<String>> scopes;
  /// Token used to authenticate with the remote SCIM service.
  final pulumi.Input<String> token;
  /// URL used to generate the token used to authenticate with the remote SCIM service.
  final pulumi.Input<String> tokenUrl;
  /// User name used to authenticate with the remote SCIM service.
  final pulumi.Input<String> user;

  /// Creates a new [GetZeroTrustAccessApplicationsResultScimConfigAuthentication].
  /// [authorizationUrl] URL used to generate the auth code used during token generation.
  /// [clientId] Client ID used to authenticate when generating a token for authenticating with the remote SCIM service.
  /// [clientSecret] Secret used to authenticate when generating a token for authenticating with the remove SCIM service.
  /// [password] Password used to authenticate with the remote SCIM service.
  /// [scheme] The authentication scheme to use when making SCIM requests to this application.
  /// [scopes] The authorization scopes to request when generating the token used to authenticate with the remove SCIM service.
  /// [token] Token used to authenticate with the remote SCIM service.
  /// [tokenUrl] URL used to generate the token used to authenticate with the remote SCIM service.
  /// [user] User name used to authenticate with the remote SCIM service.
  const GetZeroTrustAccessApplicationsResultScimConfigAuthentication({
    required this.authorizationUrl,
    required this.clientId,
    required this.clientSecret,
    required this.password,
    required this.scheme,
    required this.scopes,
    required this.token,
    required this.tokenUrl,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationUrl': authorizationUrl,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'password': password,
      'scheme': scheme,
      'scopes': scopes,
      'token': token,
      'tokenUrl': tokenUrl,
      'user': user,
    };
  }

  factory GetZeroTrustAccessApplicationsResultScimConfigAuthentication.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultScimConfigAuthentication(
      authorizationUrl: pulumi.Input.fromValue(map['authorizationUrl'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      token: pulumi.Input.fromValue(map['token'] as String),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
