// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition {
  final pulumi.Input<String> date;
  final pulumi.Input<int> maxAge;
  /// Available values: "Age", "Date".
  final pulumi.Input<String> type;

  /// Creates a new [GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition].
  /// [date] Required.
  /// [maxAge] Required.
  /// [type] Available values: "Age", "Date".
  const GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition({
    required this.date,
    required this.maxAge,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'maxAge': maxAge,
      'type': type,
    };
  }

  factory GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLifecycleRuleDeleteObjectsTransitionCondition(
      date: pulumi.Input.fromValue(map['date'] as String),
      maxAge: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxAge'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
