// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RetrohuntExecutionInterval {
  /// Optional. Exclusive end of the interval.
  /// If specified, a Timestamp matching this interval will have to be before the
  /// end.
  final pulumi.Input<String>? endTime;
  /// Optional. Inclusive start of the interval.
  /// If specified, a Timestamp matching this interval will have to be the same
  /// or after the start.
  final pulumi.Input<String>? startTime;

  /// Creates a new [RetrohuntExecutionInterval].
  /// [endTime] Optional. Exclusive end of the interval.
  /// [startTime] Optional. Inclusive start of the interval.
  const RetrohuntExecutionInterval({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory RetrohuntExecutionInterval.fromMap(Map<String, dynamic> map) {
    return RetrohuntExecutionInterval(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

