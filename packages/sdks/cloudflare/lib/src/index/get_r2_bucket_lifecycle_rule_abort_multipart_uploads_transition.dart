// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_lifecycle_rule_abort_multipart_uploads_transition_condition.dart';

class GetR2BucketLifecycleRuleAbortMultipartUploadsTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition> condition;

  /// Creates a new [GetR2BucketLifecycleRuleAbortMultipartUploadsTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  const GetR2BucketLifecycleRuleAbortMultipartUploadsTransition({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory GetR2BucketLifecycleRuleAbortMultipartUploadsTransition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRuleAbortMultipartUploadsTransition(
      condition: pulumi.Input.fromValue(GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}
