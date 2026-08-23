// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppAuthSettingsV2TwitterV2 {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerKey;
  /// The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerSecretSettingName;

  /// Creates a new [GetWindowsFunctionAppAuthSettingsV2TwitterV2].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecretSettingName] The app setting name that contains the OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  const GetWindowsFunctionAppAuthSettingsV2TwitterV2({
    required this.consumerKey,
    required this.consumerSecretSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecretSettingName': consumerSecretSettingName,
    };
  }

  factory GetWindowsFunctionAppAuthSettingsV2TwitterV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingsV2TwitterV2(
      consumerKey: pulumi.Input.fromValue(map['consumerKey'] as String),
      consumerSecretSettingName: pulumi.Input.fromValue(map['consumerSecretSettingName'] as String),
    );
  }
}
