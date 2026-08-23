// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsWorkdaySettingsAuthentication {
  /// Client ID.
  final pulumi.Input<String>? clientId;
  /// Client Secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? clientSecret;
  /// Refresh Token.
  final pulumi.Input<String>? refreshToken;
  /// The access token used to authenticate against Workday. This field is called
  /// "secret" to maintain backwards compatibility. Workday was (only) configured
  /// using username (which was unused) and secret (which is used as the access
  /// token). Either this field or all of the other OAuth fields below must be
  /// specified.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secret;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String>? tokenEndpoint;
  /// Username. This is unused: Workday feeds were originally configured using a
  /// username and secret authentication method, but only the secret field was
  /// used, and it was used to supply the OAuth access token.
  final pulumi.Input<String>? user;

  /// Creates a new [FeedDetailsWorkdaySettingsAuthentication].
  /// [clientId] Client ID.
  /// [clientSecret] Client Secret.
  /// [refreshToken] Refresh Token.
  /// [secret] The access token used to authenticate against Workday. This field is called
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  /// [user] Username. This is unused: Workday feeds were originally configured using a
  const FeedDetailsWorkdaySettingsAuthentication({
    this.clientId,
    this.clientSecret,
    this.refreshToken,
    this.secret,
    this.tokenEndpoint,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'refreshToken': ?refreshToken,
      'secret': ?secret,
      'tokenEndpoint': ?tokenEndpoint,
      'user': ?user,
    };
  }

  factory FeedDetailsWorkdaySettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkdaySettingsAuthentication(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
