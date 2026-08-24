// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketLifecycleRuleStorageClassTransitionCondition {
  final pulumi.Input<String?>? date;
  final pulumi.Input<int?>? maxAge;
  /// Available values: "Age", "Date".
  final pulumi.Input<String> type;

  /// Creates a new [R2BucketLifecycleRuleStorageClassTransitionCondition].
  /// [date] Optional.
  /// [maxAge] Optional.
  /// [type] Available values: "Age", "Date".
  const R2BucketLifecycleRuleStorageClassTransitionCondition({
    this.date,
    this.maxAge,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'maxAge': ?maxAge,
      'type': type,
    };
  }

  factory R2BucketLifecycleRuleStorageClassTransitionCondition.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleStorageClassTransitionCondition(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
