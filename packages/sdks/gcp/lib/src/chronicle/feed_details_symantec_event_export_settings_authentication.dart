// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsSymantecEventExportSettingsAuthentication {
  /// Client ID.
  final pulumi.Input<String>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientSecret;
  /// Refresh Token.
  final pulumi.Input<String>? refreshToken;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [FeedDetailsSymantecEventExportSettingsAuthentication].
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  /// [refreshToken] Refresh Token.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsSymantecEventExportSettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.refreshToken,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'refreshToken': ?refreshToken,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsSymantecEventExportSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSymantecEventExportSettingsAuthentication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
