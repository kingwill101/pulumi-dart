// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCacheKeyCustomKeyUser {
  /// Whether to use the user agent's device type in the cache key.
  final pulumi.Input<bool> deviceType;
  /// Whether to use the user agents's country in the cache key.
  final pulumi.Input<bool> geo;
  /// Whether to use the user agent's language in the cache key.
  final pulumi.Input<bool> lang;

  /// Creates a new [GetRulesetRuleActionParametersCacheKeyCustomKeyUser].
  /// [deviceType] Whether to use the user agent's device type in the cache key.
  /// [geo] Whether to use the user agents's country in the cache key.
  /// [lang] Whether to use the user agent's language in the cache key.
  const GetRulesetRuleActionParametersCacheKeyCustomKeyUser({
    required this.deviceType,
    required this.geo,
    required this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceType': deviceType,
      'geo': geo,
      'lang': lang,
    };
  }

  factory GetRulesetRuleActionParametersCacheKeyCustomKeyUser.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKeyCustomKeyUser(
      deviceType: pulumi.Input.fromValue(map['deviceType'] as bool),
      geo: pulumi.Input.fromValue(map['geo'] as bool),
      lang: pulumi.Input.fromValue(map['lang'] as bool),
    );
  }
}
