// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_item_action.dart';
import 'bucket_lifecycle_rule_item_condition.dart';

class BucketLifecycleRuleItem {
  /// The action to take.
  final pulumi.Input<BucketLifecycleRuleItemAction>? action;
  /// The condition(s) under which the action will be taken.
  final pulumi.Input<BucketLifecycleRuleItemCondition>? condition;

  /// Creates a new [BucketLifecycleRuleItem].
  /// [action] The action to take.
  /// [condition] The condition(s) under which the action will be taken.
  const BucketLifecycleRuleItem({
    this.action,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleItemAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'condition': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleItemCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleRuleItem.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleItem(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleItemAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleItemCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

