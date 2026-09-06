// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on total requests.
class RequestsBasedTriggerResponse {
  /// Request Count.
  final pulumi.Input<int?>? count;
  /// Time interval.
  final pulumi.Input<String?>? timeInterval;

  /// Creates a new [RequestsBasedTriggerResponse].
  /// [count] Request Count.
  /// [timeInterval] Time interval.
  const RequestsBasedTriggerResponse({
    this.count,
    this.timeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'timeInterval': ?timeInterval,
    };
  }

  factory RequestsBasedTriggerResponse.fromMap(Map<String, dynamic> map) {
    return RequestsBasedTriggerResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
