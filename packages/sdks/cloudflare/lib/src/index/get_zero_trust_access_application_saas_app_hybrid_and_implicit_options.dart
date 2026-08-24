// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions {
  /// If an Access Token should be returned from the OIDC Authorization endpoint
  final pulumi.Input<bool> returnAccessTokenFromAuthorizationEndpoint;
  /// If an ID Token should be returned from the OIDC Authorization endpoint
  final pulumi.Input<bool> returnIdTokenFromAuthorizationEndpoint;

  /// Creates a new [GetZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions].
  /// [returnAccessTokenFromAuthorizationEndpoint] If an Access Token should be returned from the OIDC Authorization endpoint
  /// [returnIdTokenFromAuthorizationEndpoint] If an ID Token should be returned from the OIDC Authorization endpoint
  const GetZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions({
    required this.returnAccessTokenFromAuthorizationEndpoint,
    required this.returnIdTokenFromAuthorizationEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'returnAccessTokenFromAuthorizationEndpoint': returnAccessTokenFromAuthorizationEndpoint,
      'returnIdTokenFromAuthorizationEndpoint': returnIdTokenFromAuthorizationEndpoint,
    };
  }

  factory GetZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationSaasAppHybridAndImplicitOptions(
      returnAccessTokenFromAuthorizationEndpoint: pulumi.Input.fromValue(map['returnAccessTokenFromAuthorizationEndpoint'] as bool),
      returnIdTokenFromAuthorizationEndpoint: pulumi.Input.fromValue(map['returnIdTokenFromAuthorizationEndpoint'] as bool),
    );
  }
}
