// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TenantOauthIdpConfigResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  final pulumi.Input<bool?>? code;
  /// If true, ID token is returned from IdP's authorization endpoint.
  final pulumi.Input<bool?>? idToken;

  /// Creates a new [TenantOauthIdpConfigResponseType].
  /// [code] If true, authorization code is returned from IdP's authorization endpoint.
  /// [idToken] If true, ID token is returned from IdP's authorization endpoint.
  const TenantOauthIdpConfigResponseType({
    this.code,
    this.idToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'idToken': ?idToken,
    };
  }

  factory TenantOauthIdpConfigResponseType.fromMap(Map<String, dynamic> map) {
    return TenantOauthIdpConfigResponseType(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idToken: (() { final guardedValue = map['idToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
