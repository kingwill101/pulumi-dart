// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationWebImplicitGrant {
  /// Whether this web application can request an access token using OAuth 2.0 implicit flow.
  final pulumi.Input<bool> accessTokenIssuanceEnabled;
  /// Whether this web application can request an ID token using OAuth 2.0 implicit flow.
  final pulumi.Input<bool> idTokenIssuanceEnabled;

  /// Creates a new [GetApplicationWebImplicitGrant].
  /// [accessTokenIssuanceEnabled] Whether this web application can request an access token using OAuth 2.0 implicit flow.
  /// [idTokenIssuanceEnabled] Whether this web application can request an ID token using OAuth 2.0 implicit flow.
  GetApplicationWebImplicitGrant({
    required this.accessTokenIssuanceEnabled,
    required this.idTokenIssuanceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenIssuanceEnabled': accessTokenIssuanceEnabled,
      'idTokenIssuanceEnabled': idTokenIssuanceEnabled,
    };
  }

  factory GetApplicationWebImplicitGrant.fromMap(Map<String, dynamic> map) {
    return GetApplicationWebImplicitGrant(
      accessTokenIssuanceEnabled: pulumi.Input.fromValue(map['accessTokenIssuanceEnabled'] as bool),
      idTokenIssuanceEnabled: pulumi.Input.fromValue(map['idTokenIssuanceEnabled'] as bool),
    );
  }
}

