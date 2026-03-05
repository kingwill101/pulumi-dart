// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OauthIdpConfigResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  final pulumi.Input<bool>? code;
  /// If true, ID token is returned from IdP's authorization endpoint.
  final pulumi.Input<bool>? idToken;

  /// Creates a new [OauthIdpConfigResponseType].
  /// [code] If true, authorization code is returned from IdP's authorization endpoint.
  /// [idToken] If true, ID token is returned from IdP's authorization endpoint.
  OauthIdpConfigResponseType({
    this.code,
    this.idToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'idToken': ?idToken,
    };
  }

  factory OauthIdpConfigResponseType.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigResponseType(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idToken: (() { final guardedValue = map['idToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

