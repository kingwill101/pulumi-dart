// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition {
  final pulumi.Input<int> maxAge;
  /// Available values: "Age".
  final pulumi.Input<String> type;

  /// Creates a new [GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition].
  /// [maxAge] Required.
  /// [type] Available values: "Age".
  const GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition({
    required this.maxAge,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAge': maxAge,
      'type': type,
    };
  }

  factory GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRuleAbortMultipartUploadsTransitionCondition(
      maxAge: pulumi.Input.fromValue((map['maxAge'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
