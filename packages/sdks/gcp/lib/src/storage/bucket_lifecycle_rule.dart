// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_action.dart';
import 'bucket_lifecycle_rule_condition.dart';

class BucketLifecycleRule {
  /// The Lifecycle Rule's action configuration. A single block of this type is supported. Structure is documented below.
  final pulumi.Input<BucketLifecycleRuleAction> action;
  /// The Lifecycle Rule's condition configuration. A single block of this type is supported. Structure is documented below.
  final pulumi.Input<BucketLifecycleRuleCondition> condition;

  /// Creates a new [BucketLifecycleRule].
  /// [action] The Lifecycle Rule's action configuration. A single block of this type is supported. Structure is documented below.
  /// [condition] The Lifecycle Rule's condition configuration. A single block of this type is supported. Structure is documented below.
  const BucketLifecycleRule({
    required this.action,
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<BucketLifecycleRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<BucketLifecycleRuleCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      action: pulumi.Input.fromValue(BucketLifecycleRuleAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      condition: pulumi.Input.fromValue(BucketLifecycleRuleCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}

