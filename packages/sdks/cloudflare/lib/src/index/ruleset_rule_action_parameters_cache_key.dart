// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_cache_key_custom_key.dart';

class RulesetRuleActionParametersCacheKey {
  /// Whether to separate cached content based on the visitor's device type.
  final pulumi.Input<bool?>? cacheByDeviceType;
  /// Whether to protect from web cache deception attacks, while allowing static assets to be cached.
  final pulumi.Input<bool?>? cacheDeceptionArmor;
  /// Which components of the request are included or excluded from the cache key.
  final pulumi.Input<RulesetRuleActionParametersCacheKeyCustomKey?>? customKey;
  /// Whether to treat requests with the same query parameters the same, regardless of the order those query parameters are in.
  final pulumi.Input<bool?>? ignoreQueryStringsOrder;

  /// Creates a new [RulesetRuleActionParametersCacheKey].
  /// [cacheByDeviceType] Whether to separate cached content based on the visitor's device type.
  /// [cacheDeceptionArmor] Whether to protect from web cache deception attacks, while allowing static assets to be cached.
  /// [customKey] Which components of the request are included or excluded from the cache key.
  /// [ignoreQueryStringsOrder] Whether to treat requests with the same query parameters the same, regardless of the order those query parameters are in.
  const RulesetRuleActionParametersCacheKey({
    this.cacheByDeviceType,
    this.cacheDeceptionArmor,
    this.customKey,
    this.ignoreQueryStringsOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheByDeviceType': ?cacheByDeviceType,
      'cacheDeceptionArmor': ?cacheDeceptionArmor,
      'customKey': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKeyCustomKey, Map<String, dynamic>>(customKey, (value) => value.toMap()),
      'ignoreQueryStringsOrder': ?ignoreQueryStringsOrder,
    };
  }

  factory RulesetRuleActionParametersCacheKey.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCacheKey(
      cacheByDeviceType: (() { final guardedValue = map['cacheByDeviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheDeceptionArmor: (() { final guardedValue = map['cacheDeceptionArmor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customKey: (() { final guardedValue = map['customKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKeyCustomKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreQueryStringsOrder: (() { final guardedValue = map['ignoreQueryStringsOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
