// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationWebImplicitGrant {
  /// Whether this web application can request an access token using OAuth 2.0 implicit flow.
  final pulumi.Input<bool>? accessTokenIssuanceEnabled;

  /// Whether this web application can request an ID token using OAuth 2.0 implicit flow.
  final pulumi.Input<bool>? idTokenIssuanceEnabled;

  /// Creates a new [ApplicationWebImplicitGrant].
  /// [accessTokenIssuanceEnabled] Whether this web application can request an access token using OAuth 2.0 implicit flow.
  /// [idTokenIssuanceEnabled] Whether this web application can request an ID token using OAuth 2.0 implicit flow.
  ApplicationWebImplicitGrant({
    this.accessTokenIssuanceEnabled,
    this.idTokenIssuanceEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenIssuanceEnabled': ?accessTokenIssuanceEnabled,
      'idTokenIssuanceEnabled': ?idTokenIssuanceEnabled,
    };
  }

  factory ApplicationWebImplicitGrant.fromMap(Map<String, dynamic> map) {
    return ApplicationWebImplicitGrant(
      accessTokenIssuanceEnabled: (() {
        final guardedValue = map['accessTokenIssuanceEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      idTokenIssuanceEnabled: (() {
        final guardedValue = map['idTokenIssuanceEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
