// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionPushConfigOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim
  /// identifies the recipients that the JWT is intended for. The audience
  /// value is a single case-sensitive string. Having multiple values (array)
  /// for the audience field is not supported. More info about the OIDC JWT
  /// token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3
  /// Note: if not specified, the Push endpoint URL will be used.
  final pulumi.Input<String>? audience;
  /// Service account email to be used for generating the OIDC token.
  /// The caller (for subscriptions.create, subscriptions.patch, and
  /// subscriptions.modifyPushConfig RPCs) must have the
  /// iam.serviceAccounts.actAs permission for the service account.
  final pulumi.Input<String> serviceAccountEmail;

  /// Creates a new [SubscriptionPushConfigOidcToken].
  /// [audience] Audience to be used when generating OIDC token. The audience claim
  /// [serviceAccountEmail] Service account email to be used for generating the OIDC token.
  const SubscriptionPushConfigOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory SubscriptionPushConfigOidcToken.fromMap(Map<String, dynamic> map) {
    return SubscriptionPushConfigOidcToken(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
    );
  }
}

