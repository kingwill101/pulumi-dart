// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketLifecycleRuleDeleteObjectsTransitionCondition {
  final pulumi.Input<String?>? date;
  final pulumi.Input<int?>? maxAge;
  /// Available values: "Age", "Date".
  final pulumi.Input<String> type;

  /// Creates a new [R2BucketLifecycleRuleDeleteObjectsTransitionCondition].
  /// [date] Optional.
  /// [maxAge] Optional.
  /// [type] Available values: "Age", "Date".
  const R2BucketLifecycleRuleDeleteObjectsTransitionCondition({
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

  factory R2BucketLifecycleRuleDeleteObjectsTransitionCondition.fromMap(Map<String, dynamic> map) {
    return R2BucketLifecycleRuleDeleteObjectsTransitionCondition(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
