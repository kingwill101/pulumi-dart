// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsOffice365SettingsAuthentication {
  /// Client ID.
  final pulumi.Input<String?>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;

  /// Creates a new [FeedDetailsOffice365SettingsAuthentication].
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  const FeedDetailsOffice365SettingsAuthentication({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory FeedDetailsOffice365SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsOffice365SettingsAuthentication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
