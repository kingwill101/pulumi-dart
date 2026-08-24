// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lock_rule_condition.dart';

class GetR2BucketLockRule {
  /// Condition to apply a lock rule to an object for how long in seconds.
  final pulumi.Input<GetR2BucketLockRuleCondition> condition;
  /// Whether or not this rule is in effect.
  final pulumi.Input<bool> enabled;
  /// Unique identifier for this rule.
  final pulumi.Input<String> id;
  /// Rule will only apply to objects/uploads in the bucket that start with the given prefix, an empty prefix can be provided to scope rule to all objects/uploads.
  final pulumi.Input<String> prefix;

  /// Creates a new [GetR2BucketLockRule].
  /// [condition] Condition to apply a lock rule to an object for how long in seconds.
  /// [enabled] Whether or not this rule is in effect.
  /// [id] Unique identifier for this rule.
  /// [prefix] Rule will only apply to objects/uploads in the bucket that start with the given prefix, an empty prefix can be provided to scope rule to all objects/uploads.
  const GetR2BucketLockRule({
    required this.condition,
    required this.enabled,
    required this.id,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GetR2BucketLockRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'enabled': enabled,
      'id': id,
      'prefix': prefix,
    };
  }

  factory GetR2BucketLockRule.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLockRule(
      condition: pulumi.Input.fromValue(GetR2BucketLockRuleCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
    );
  }
}
