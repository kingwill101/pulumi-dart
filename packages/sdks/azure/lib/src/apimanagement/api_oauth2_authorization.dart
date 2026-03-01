// ignore_for_file: unused_element, unnecessary_cast


class ApiOauth2Authorization {
  /// OAuth authorization server identifier. The name of an OAuth2 Authorization Server.
  final String authorizationServerName;
  /// Operations scope.
  final String? scope;

  /// Creates a new [ApiOauth2Authorization].
  /// [authorizationServerName] OAuth authorization server identifier. The name of an OAuth2 Authorization Server.
  /// [scope] Operations scope.
  ApiOauth2Authorization({
    required this.authorizationServerName,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationServerName': authorizationServerName,
      'scope': ?scope,
    };
  }

  factory ApiOauth2Authorization.fromMap(Map<String, dynamic> map) {
    return ApiOauth2Authorization(
      authorizationServerName: map['authorizationServerName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

