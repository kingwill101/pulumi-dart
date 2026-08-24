// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_rule_delete_objects_transition_condition.dart';

class R2BucketLifecycleRuleDeleteObjectsTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<R2BucketLifecycleRuleDeleteObjectsTransitionCondition?>? condition;

  /// Creates a new [R2BucketLifecycleRuleDeleteObjectsTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  const R2BucketLifecycleRuleDeleteObjectsTransition({
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<R2BucketLifecycleRuleDeleteObjectsTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory R2BucketLifecycleRuleDeleteObjectsTransition.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleDeleteObjectsTransition(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketLifecycleRuleDeleteObjectsTransitionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
