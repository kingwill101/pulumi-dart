// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lifecycle_rule_delete_objects_transition_condition.dart';

class GetR2BucketLifecycleRuleDeleteObjectsTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition> condition;

  /// Creates a new [GetR2BucketLifecycleRuleDeleteObjectsTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  const GetR2BucketLifecycleRuleDeleteObjectsTransition({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory GetR2BucketLifecycleRuleDeleteObjectsTransition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRuleDeleteObjectsTransition(
      condition: pulumi.Input.fromValue(GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}
