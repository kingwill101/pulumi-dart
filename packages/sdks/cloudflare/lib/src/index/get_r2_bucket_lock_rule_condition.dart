// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketLockRuleCondition {
  final pulumi.Input<String> date;
  final pulumi.Input<int> maxAgeSeconds;
  /// Available values: "Age", "Date", "Indefinite".
  final pulumi.Input<String> type;

  /// Creates a new [GetR2BucketLockRuleCondition].
  /// [date] Required.
  /// [maxAgeSeconds] Required.
  /// [type] Available values: "Age", "Date", "Indefinite".
  const GetR2BucketLockRuleCondition({
    required this.date,
    required this.maxAgeSeconds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'maxAgeSeconds': maxAgeSeconds,
      'type': type,
    };
  }

  factory GetR2BucketLockRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLockRuleCondition(
      date: pulumi.Input.fromValue(map['date'] as String),
      maxAgeSeconds: pulumi.Input.fromValue((map['maxAgeSeconds'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
