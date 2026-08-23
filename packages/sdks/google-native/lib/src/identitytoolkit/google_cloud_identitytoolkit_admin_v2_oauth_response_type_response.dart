// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported. See https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a mapping of response type to OAuth 2.0 flow.
class GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  final pulumi.Input<bool> code;
  /// If true, ID token is returned from IdP's authorization endpoint.
  final pulumi.Input<bool> idToken;
  /// Do not use. The `token` response type is not supported at the moment.
  final pulumi.Input<bool> token;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse].
  /// [code] If true, authorization code is returned from IdP's authorization endpoint.
  /// [idToken] If true, ID token is returned from IdP's authorization endpoint.
  /// [token] Do not use. The `token` response type is not supported at the moment.
  const GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse({
    required this.code,
    required this.idToken,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'idToken': idToken,
      'token': token,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2OAuthResponseTypeResponse(
      code: pulumi.Input.fromValue(map['code'] as bool),
      idToken: pulumi.Input.fromValue(map['idToken'] as bool),
      token: pulumi.Input.fromValue(map['token'] as bool),
    );
  }
}
