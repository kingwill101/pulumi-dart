// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients
  /// that the JWT is intended for. The audience value is a single case-sensitive string. Having
  /// multiple values (array) for the audience field is not supported. More info about the OIDC JWT
  /// token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
  /// the Push endpoint URL will be used.
  final pulumi.Input<String?>? audience;
  /// Service account email used for generating the OIDC token. For more information
  /// on setting up authentication, see Push subscriptions.
  final pulumi.Input<String?>? serviceAccountEmail;

  /// Creates a new [ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken].
  /// [audience] Audience to be used when generating OIDC token. The audience claim identifies the recipients
  /// [serviceAccountEmail] Service account email used for generating the OIDC token. For more information
  const ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': ?serviceAccountEmail,
    };
  }

  factory ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken.fromMap(Map<String, dynamic> map) {
    return ListingSubscriptionDestinationPubsubSubscriptionPubsubSubscriptionPushConfigOidcToken(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
