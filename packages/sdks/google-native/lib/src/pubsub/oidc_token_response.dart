// ignore_for_file: unused_element, unnecessary_cast


/// Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
class OidcTokenResponse {
  /// Optional. Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.
  final String audience;
  /// Optional. [Service account email](https://cloud.google.com/iam/docs/service-accounts) used for generating the OIDC token. For more information on setting up authentication, see [Push subscriptions](https://cloud.google.com/pubsub/docs/push).
  final String serviceAccountEmail;

  /// Creates a new [OidcTokenResponse].
  /// [audience] Optional. Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.
  /// [serviceAccountEmail] Optional. [Service account email](https://cloud.google.com/iam/docs/service-accounts) used for generating the OIDC token. For more information on setting up authentication, see [Push subscriptions](https://cloud.google.com/pubsub/docs/push).
  OidcTokenResponse({
    required this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory OidcTokenResponse.fromMap(Map<String, dynamic> map) {
    return OidcTokenResponse(
      audience: map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}

