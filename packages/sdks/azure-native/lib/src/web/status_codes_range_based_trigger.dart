// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on range of status codes.
class StatusCodesRangeBasedTrigger {
  /// Request Count.
  final pulumi.Input<int>? count;
  final pulumi.Input<String>? path;
  /// HTTP status code.
  final pulumi.Input<String>? statusCodes;
  /// Time interval.
  final pulumi.Input<String>? timeInterval;

  /// Creates a new [StatusCodesRangeBasedTrigger].
  /// [count] Request Count.
  /// [path] Optional.
  /// [statusCodes] HTTP status code.
  /// [timeInterval] Time interval.
  const StatusCodesRangeBasedTrigger({
    this.count,
    this.path,
    this.statusCodes,
    this.timeInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'path': ?path,
      'statusCodes': ?statusCodes,
      'timeInterval': ?timeInterval,
    };
  }

  factory StatusCodesRangeBasedTrigger.fromMap(Map<String, dynamic> map) {
    return StatusCodesRangeBasedTrigger(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusCodes: (() { final guardedValue = map['statusCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

