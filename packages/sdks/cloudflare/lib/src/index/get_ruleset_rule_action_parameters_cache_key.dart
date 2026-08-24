// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_cache_key_custom_key.dart';

class GetRulesetRuleActionParametersCacheKey {
  /// Whether to separate cached content based on the visitor's device type.
  final pulumi.Input<bool> cacheByDeviceType;
  /// Whether to protect from web cache deception attacks, while allowing static assets to be cached.
  final pulumi.Input<bool> cacheDeceptionArmor;
  /// Which components of the request are included or excluded from the cache key.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKeyCustomKey> customKey;
  /// Whether to treat requests with the same query parameters the same, regardless of the order those query parameters are in.
  final pulumi.Input<bool> ignoreQueryStringsOrder;

  /// Creates a new [GetRulesetRuleActionParametersCacheKey].
  /// [cacheByDeviceType] Whether to separate cached content based on the visitor's device type.
  /// [cacheDeceptionArmor] Whether to protect from web cache deception attacks, while allowing static assets to be cached.
  /// [customKey] Which components of the request are included or excluded from the cache key.
  /// [ignoreQueryStringsOrder] Whether to treat requests with the same query parameters the same, regardless of the order those query parameters are in.
  const GetRulesetRuleActionParametersCacheKey({
    required this.cacheByDeviceType,
    required this.cacheDeceptionArmor,
    required this.customKey,
    required this.ignoreQueryStringsOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheByDeviceType': cacheByDeviceType,
      'cacheDeceptionArmor': cacheDeceptionArmor,
      'customKey': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKeyCustomKey, Map<String, dynamic>>(customKey, (value) => value.toMap()),
      'ignoreQueryStringsOrder': ignoreQueryStringsOrder,
    };
  }

  factory GetRulesetRuleActionParametersCacheKey.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCacheKey(
      cacheByDeviceType: pulumi.Input.fromValue(map['cacheByDeviceType'] as bool),
      cacheDeceptionArmor: pulumi.Input.fromValue(map['cacheDeceptionArmor'] as bool),
      customKey: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKeyCustomKey.fromMap((map['customKey']! as Map).cast<String, dynamic>())),
      ignoreQueryStringsOrder: pulumi.Input.fromValue(map['ignoreQueryStringsOrder'] as bool),
    );
  }
}
