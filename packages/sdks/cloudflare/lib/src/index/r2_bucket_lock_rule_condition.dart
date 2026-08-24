// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class R2BucketLockRuleCondition {
  final pulumi.Input<String?>? date;
  final pulumi.Input<int?>? maxAgeSeconds;
  /// Available values: "Age", "Date", "Indefinite".
  final pulumi.Input<String> type;

  /// Creates a new [R2BucketLockRuleCondition].
  /// [date] Optional.
  /// [maxAgeSeconds] Optional.
  /// [type] Available values: "Age", "Date", "Indefinite".
  const R2BucketLockRuleCondition({
    this.date,
    this.maxAgeSeconds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'maxAgeSeconds': ?maxAgeSeconds,
      'type': type,
    };
  }

  factory R2BucketLockRuleCondition.fromMap(Map<String, dynamic> map) {
    return R2BucketLockRuleCondition(
      date: (() { final guardedValue = map['date']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
