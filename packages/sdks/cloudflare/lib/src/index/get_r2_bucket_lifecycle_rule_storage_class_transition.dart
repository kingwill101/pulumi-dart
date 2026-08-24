// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lifecycle_rule_storage_class_transition_condition.dart';

class GetR2BucketLifecycleRuleStorageClassTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<GetR2BucketLifecycleRuleStorageClassTransitionCondition> condition;
  /// Available values: "InfrequentAccess".
  final pulumi.Input<String> storageClass;

  /// Creates a new [GetR2BucketLifecycleRuleStorageClassTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  /// [storageClass] Available values: "InfrequentAccess".
  const GetR2BucketLifecycleRuleStorageClassTransition({
    required this.condition,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleStorageClassTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'storageClass': storageClass,
    };
  }

  factory GetR2BucketLifecycleRuleStorageClassTransition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRuleStorageClassTransition(
      condition: pulumi.Input.fromValue(GetR2BucketLifecycleRuleStorageClassTransitionCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
    );
  }
}
