// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsCrowdstrikeDetectsSettingsAuthentication {
  /// Client ID.
  final pulumi.Input<String?>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String?>? tokenEndpoint;

  /// Creates a new [FeedDetailsCrowdstrikeDetectsSettingsAuthentication].
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsCrowdstrikeDetectsSettingsAuthentication({
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

  factory FeedDetailsCrowdstrikeDetectsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsCrowdstrikeDetectsSettingsAuthentication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
