// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_lifecycle_rule_abort_multipart_uploads_transition_condition.dart';

class R2BucketLifecycleRuleAbortMultipartUploadsTransition {
  /// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  final pulumi.Input<R2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition?>? condition;

  /// Creates a new [R2BucketLifecycleRuleAbortMultipartUploadsTransition].
  /// [condition] Condition for lifecycle transitions to apply after an object reaches an age in seconds.
  const R2BucketLifecycleRuleAbortMultipartUploadsTransition({
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<R2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory R2BucketLifecycleRuleAbortMultipartUploadsTransition.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleAbortMultipartUploadsTransition(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
