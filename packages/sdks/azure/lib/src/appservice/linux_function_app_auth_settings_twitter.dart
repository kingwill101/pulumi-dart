// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumerSecretSettingName`.
  final pulumi.Input<String?>? consumerSecret;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumerSecret`.
  final pulumi.Input<String?>? consumerSecretSettingName;

  /// Creates a new [LinuxFunctionAppAuthSettingsTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumerSecretSettingName`.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in. Cannot be specified with `consumerSecret`.
  const LinuxFunctionAppAuthSettingsTwitter({
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

  factory LinuxFunctionAppAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsTwitter(
      consumerKey: pulumi.Input.fromValue(map['consumerKey'] as String),
      consumerSecret: (() { final guardedValue = map['consumerSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerSecretSettingName: (() { final guardedValue = map['consumerSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
