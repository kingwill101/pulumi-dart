// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_rule_storage_class_transition_condition.dart';

class R2BucketLifecycleRuleStorageClassTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<R2BucketLifecycleRuleStorageClassTransitionCondition> condition;
  /// Available values: "InfrequentAccess".
  final pulumi.Input<String> storageClass;

  /// Creates a new [R2BucketLifecycleRuleStorageClassTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  /// [storageClass] Available values: "InfrequentAccess".
  const R2BucketLifecycleRuleStorageClassTransition({
    required this.condition,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<R2BucketLifecycleRuleStorageClassTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'storageClass': storageClass,
    };
  }

  factory R2BucketLifecycleRuleStorageClassTransition.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleStorageClassTransition(
      condition: pulumi.Input.fromValue(R2BucketLifecycleRuleStorageClassTransitionCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
