// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCacheKeyCustomKeyUser {
  /// Whether to use the user agent's device type in the cache key.
  final pulumi.Input<bool?>? deviceType;
  /// Whether to use the user agents's country in the cache key.
  final pulumi.Input<bool?>? geo;
  /// Whether to use the user agent's language in the cache key.
  final pulumi.Input<bool?>? lang;

  /// Creates a new [RulesetRuleActionParametersCacheKeyCustomKeyUser].
  /// [deviceType] Whether to use the user agent's device type in the cache key.
  /// [geo] Whether to use the user agents's country in the cache key.
  /// [lang] Whether to use the user agent's language in the cache key.
  const RulesetRuleActionParametersCacheKeyCustomKeyUser({
    this.deviceType,
    this.geo,
    this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceType': ?deviceType,
      'geo': ?geo,
      'lang': ?lang,
    };
  }

  factory RulesetRuleActionParametersCacheKeyCustomKeyUser.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKeyCustomKeyUser(
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geo: (() { final guardedValue = map['geo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
