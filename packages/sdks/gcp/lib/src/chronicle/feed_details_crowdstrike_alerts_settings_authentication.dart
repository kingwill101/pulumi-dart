// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsCrowdstrikeAlertsSettingsAuthentication {
  /// Client ID.
  final pulumi.Input<String>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientSecret;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [FeedDetailsCrowdstrikeAlertsSettingsAuthentication].
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsCrowdstrikeAlertsSettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsCrowdstrikeAlertsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCrowdstrikeAlertsSettingsAuthentication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
