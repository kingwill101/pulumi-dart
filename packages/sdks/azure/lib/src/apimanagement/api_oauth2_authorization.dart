// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiOauth2Authorization {
  /// OAuth authorization server identifier. The name of an OAuth2 Authorization Server.
  final pulumi.Input<String> authorizationServerName;
  /// Operations scope.
  final pulumi.Input<String>? scope;

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
      authorizationServerName: pulumi.Input.fromValue(map['authorizationServerName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

