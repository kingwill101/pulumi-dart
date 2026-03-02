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
  StatusCodesRangeBasedTrigger({
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
      count: map['count'] == null ? null : (map['count']! as int).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      statusCodes: map['statusCodes'] == null ? null : (map['statusCodes']! as String).input(),
      timeInterval: map['timeInterval'] == null ? null : (map['timeInterval']! as String).input(),
    );
  }
}

