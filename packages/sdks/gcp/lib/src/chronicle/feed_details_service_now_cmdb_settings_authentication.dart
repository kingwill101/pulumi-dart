// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsServiceNowCmdbSettingsAuthentication {
  /// The access token used to authenticate against Workday. This field is called
  /// "secret" to maintain backwards compatibility. Workday was (only) configured
  /// using username (which was unused) and secret (which is used as the access
  /// token). Either this field or all of the other OAuth fields below must be
  /// specified.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secret;
  /// Username. This is unused: Workday feeds were originally configured using a
  /// username and secret authentication method, but only the secret field was
  /// used, and it was used to supply the OAuth access token.
  final pulumi.Input<String>? user;

  /// Creates a new [FeedDetailsServiceNowCmdbSettingsAuthentication].
  /// [secret] The access token used to authenticate against Workday. This field is called
  /// [user] Username. This is unused: Workday feeds were originally configured using a
  const FeedDetailsServiceNowCmdbSettingsAuthentication({
    this.secret,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': ?secret,
      'user': ?user,
    };
  }

  factory FeedDetailsServiceNowCmdbSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsServiceNowCmdbSettingsAuthentication(
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
