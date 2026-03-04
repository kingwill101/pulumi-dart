// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerKey;

  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerSecret;

  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerSecretSettingName;

  /// Creates a new [GetLinuxWebAppAuthSettingTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  GetLinuxWebAppAuthSettingTwitter({
    required this.consumerKey,
    required this.consumerSecret,
    required this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
      'consumerSecretSettingName': consumerSecretSettingName,
    };
  }

  factory GetLinuxWebAppAuthSettingTwitter.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingTwitter(
      consumerKey: pulumi.Input.fromValue(map['consumerKey'] as String),
      consumerSecret: pulumi.Input.fromValue(map['consumerSecret'] as String),
      consumerSecretSettingName: pulumi.Input.fromValue(
        map['consumerSecretSettingName'] as String,
      ),
    );
  }
}
