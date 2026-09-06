// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on request execution time.
class SlowRequestsBasedTrigger {
  /// Request Count.
  final pulumi.Input<int?>? count;
  /// Request Path.
  final pulumi.Input<String?>? path;
  /// Time interval.
  final pulumi.Input<String?>? timeInterval;
  /// Time taken.
  final pulumi.Input<String?>? timeTaken;

  /// Creates a new [SlowRequestsBasedTrigger].
  /// [count] Request Count.
  /// [path] Request Path.
  /// [timeInterval] Time interval.
  /// [timeTaken] Time taken.
  const SlowRequestsBasedTrigger({
    this.count,
    this.path,
    this.timeInterval,
    this.timeTaken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'path': ?path,
      'timeInterval': ?timeInterval,
      'timeTaken': ?timeTaken,
    };
  }

  factory SlowRequestsBasedTrigger.fromMap(Map<String, dynamic> map) {
    return SlowRequestsBasedTrigger(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeTaken: (() { final guardedValue = map['timeTaken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
