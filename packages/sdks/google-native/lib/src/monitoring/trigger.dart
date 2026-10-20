// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how many time series must fail a predicate to trigger a condition. If not specified, then a {count: 1} trigger is used.
class Trigger {
  /// The absolute number of time series that must fail the predicate for the condition to be triggered.
  final pulumi.Input<int?>? count;
  /// The percentage of time series that must fail the predicate for the condition to be triggered.
  final pulumi.Input<double?>? percent;

  /// Creates a new [Trigger].
  /// [count] The absolute number of time series that must fail the predicate for the condition to be triggered.
  /// [percent] The percentage of time series that must fail the predicate for the condition to be triggered.
  const Trigger({
    this.count,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'percent': ?percent,
    };
  }

  factory Trigger.fromMap(Map<String, dynamic> map) {
    return Trigger(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
