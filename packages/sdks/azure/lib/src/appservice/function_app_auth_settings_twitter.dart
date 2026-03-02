// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppAuthSettingsTwitter {
  /// The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerKey;
  /// The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  final pulumi.Input<String> consumerSecret;

  /// Creates a new [FunctionAppAuthSettingsTwitter].
  /// [consumerKey] The OAuth 1.0a consumer key of the Twitter application used for sign-in.
  /// [consumerSecret] The OAuth 1.0a consumer secret of the Twitter application used for sign-in.
  FunctionAppAuthSettingsTwitter({
    required this.consumerKey,
    required this.consumerSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerKey': consumerKey,
      'consumerSecret': consumerSecret,
    };
  }

  factory FunctionAppAuthSettingsTwitter.fromMap(Map<String, dynamic> map) {
    return FunctionAppAuthSettingsTwitter(
      consumerKey: (map['consumerKey'] as String).input(),
      consumerSecret: (map['consumerSecret'] as String).input(),
    );
  }
}

