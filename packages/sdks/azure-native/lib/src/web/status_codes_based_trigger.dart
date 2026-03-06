// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on status code.
class StatusCodesBasedTrigger {
  /// Request Count.
  final pulumi.Input<int>? count;
  /// Request Path
  final pulumi.Input<String>? path;
  /// HTTP status code.
  final pulumi.Input<int>? status;
  /// Request Sub Status.
  final pulumi.Input<int>? subStatus;
  /// Time interval.
  final pulumi.Input<String>? timeInterval;
  /// Win32 error code.
  final pulumi.Input<int>? win32Status;

  /// Creates a new [StatusCodesBasedTrigger].
  /// [count] Request Count.
  /// [path] Request Path
  /// [status] HTTP status code.
  /// [subStatus] Request Sub Status.
  /// [timeInterval] Time interval.
  /// [win32Status] Win32 error code.
  const StatusCodesBasedTrigger({
    this.count,
    this.path,
    this.status,
    this.subStatus,
    this.timeInterval,
    this.win32Status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'path': ?path,
      'status': ?status,
      'subStatus': ?subStatus,
      'timeInterval': ?timeInterval,
      'win32Status': ?win32Status,
    };
  }

  factory StatusCodesBasedTrigger.fromMap(Map<String, dynamic> map) {
    return StatusCodesBasedTrigger(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subStatus: (() { final guardedValue = map['subStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      win32Status: (() { final guardedValue = map['win32Status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

