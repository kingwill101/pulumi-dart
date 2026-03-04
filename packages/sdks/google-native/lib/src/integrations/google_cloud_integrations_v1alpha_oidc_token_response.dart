// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OIDC Token
class GoogleCloudIntegrationsV1alphaOidcTokenResponse {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  final pulumi.Input<String> audience;

  /// The service account email to be used as the identity for the token.
  final pulumi.Input<String> serviceAccountEmail;

  /// ID token obtained for the service account
  final pulumi.Input<String> token;

  /// The approximate time until the token retrieved is valid.
  final pulumi.Input<String> tokenExpireTime;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOidcTokenResponse].
  /// [audience] Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  /// [serviceAccountEmail] The service account email to be used as the identity for the token.
  /// [token] ID token obtained for the service account
  /// [tokenExpireTime] The approximate time until the token retrieved is valid.
  GoogleCloudIntegrationsV1alphaOidcTokenResponse({
    required this.audience,
    required this.serviceAccountEmail,
    required this.token,
    required this.tokenExpireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'serviceAccountEmail': serviceAccountEmail,
      'token': token,
      'tokenExpireTime': tokenExpireTime,
    };
  }

  factory GoogleCloudIntegrationsV1alphaOidcTokenResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaOidcTokenResponse(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(
        map['serviceAccountEmail'] as String,
      ),
      token: pulumi.Input.fromValue(map['token'] as String),
      tokenExpireTime: pulumi.Input.fromValue(map['tokenExpireTime'] as String),
    );
  }
}
