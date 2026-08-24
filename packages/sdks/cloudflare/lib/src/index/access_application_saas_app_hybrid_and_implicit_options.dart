// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationSaasAppHybridAndImplicitOptions {
  /// If an Access Token should be returned from the OIDC Authorization endpoint
  final pulumi.Input<bool?>? returnAccessTokenFromAuthorizationEndpoint;
  /// If an ID Token should be returned from the OIDC Authorization endpoint
  final pulumi.Input<bool?>? returnIdTokenFromAuthorizationEndpoint;

  /// Creates a new [AccessApplicationSaasAppHybridAndImplicitOptions].
  /// [returnAccessTokenFromAuthorizationEndpoint] If an Access Token should be returned from the OIDC Authorization endpoint
  /// [returnIdTokenFromAuthorizationEndpoint] If an ID Token should be returned from the OIDC Authorization endpoint
  const AccessApplicationSaasAppHybridAndImplicitOptions({
    this.returnAccessTokenFromAuthorizationEndpoint,
    this.returnIdTokenFromAuthorizationEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnAccessTokenFromAuthorizationEndpoint': ?returnAccessTokenFromAuthorizationEndpoint,
      'returnIdTokenFromAuthorizationEndpoint': ?returnIdTokenFromAuthorizationEndpoint,
    };
  }

  factory AccessApplicationSaasAppHybridAndImplicitOptions.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppHybridAndImplicitOptions(
      returnAccessTokenFromAuthorizationEndpoint: (() { final guardedValue = map['returnAccessTokenFromAuthorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      returnIdTokenFromAuthorizationEndpoint: (() { final guardedValue = map['returnIdTokenFromAuthorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
