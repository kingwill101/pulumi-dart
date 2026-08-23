// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam {
  /// Client ID generated in Trellix IAM.
  /// This is a unique identifier for the user that is generated in Trellix IAM.
  /// It has no default, specifically enforced min / max length or character set.
  /// It is assumed that the Client ID generated in Trellix IAM is internally
  /// consistent with Trellix IAM authentication requirements / validation.
  final pulumi.Input<String>? clientId;
  /// Secret associated with the Client ID.
  /// This is the secret generated in Trellix IAM for the Client ID. It has no
  /// default, specifically enforced min / max length or character set. It is
  /// assumed that the secret generated in Trellix IAM is internally
  /// consistent with Trellix IAM authentication requirements / validation.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientSecret;
  /// OAUTH 2 scope to request for the authentication token.
  /// This is the OAUTH 2 scope to request for the authentication token. It has
  /// no default, specifically enforced min / max length or character set. It is
  /// assumed that the scope provided is internally consistent with Trellix IAM
  /// authentication requirements / validation.
  final pulumi.Input<String>? scope;

  /// Creates a new [FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam].
  /// [clientId] Client ID generated in Trellix IAM.
  /// [clientSecret] Secret associated with the Client ID.
  /// [scope] OAUTH 2 scope to request for the authentication token.
  const FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam({
    this.clientId,
    this.clientSecret,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'scope': ?scope,
    };
  }

  factory FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam.fromMap(Map<String, dynamic> map) {
    return FeedDetailsTrellixHxAlertsSettingsAuthenticationTrellixIam(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
