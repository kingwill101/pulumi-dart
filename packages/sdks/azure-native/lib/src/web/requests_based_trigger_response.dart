// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on total requests.
class RequestsBasedTriggerResponse {
  /// Request Count.
  final pulumi.Input<int>? count;
  /// Time interval.
  final pulumi.Input<String>? timeInterval;

  /// Creates a new [RequestsBasedTriggerResponse].
  /// [count] Request Count.
  /// [timeInterval] Time interval.
  RequestsBasedTriggerResponse({
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
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

