// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotAuthSettingsTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`.
  final pulumi.Input<String>? consumerSecret;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`.
  final pulumi.Input<String>? consumerSecretSettingName;

  /// Creates a new [WindowsWebAppSlotAuthSettingsTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret_setting_name`.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumer_secret`.
  WindowsWebAppSlotAuthSettingsTwitter({
    required this.consumerKey,
    this.consumerSecret,
    this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': ?consumerSecret,
      'consumerSecretSettingName': ?consumerSecretSettingName,
    };
  }

  factory WindowsWebAppSlotAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsTwitter(
      consumerKey: (map['consumerKey'] as String).input(),
      consumerSecret: map['consumerSecret'] == null ? null : (map['consumerSecret']! as String).input(),
      consumerSecretSettingName: map['consumerSecretSettingName'] == null ? null : (map['consumerSecretSettingName']! as String).input(),
    );
  }
}

