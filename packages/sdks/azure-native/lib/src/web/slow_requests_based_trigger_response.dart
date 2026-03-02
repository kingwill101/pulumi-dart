// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger based on request execution time.
class SlowRequestsBasedTriggerResponse {
  /// Request Count.
  final pulumi.Input<int>? count;
  /// Request Path.
  final pulumi.Input<String>? path;
  /// Time interval.
  final pulumi.Input<String>? timeInterval;
  /// Time taken.
  final pulumi.Input<String>? timeTaken;

  /// Creates a new [SlowRequestsBasedTriggerResponse].
  /// [count] Request Count.
  /// [path] Request Path.
  /// [timeInterval] Time interval.
  /// [timeTaken] Time taken.
  SlowRequestsBasedTriggerResponse({
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

  factory SlowRequestsBasedTriggerResponse.fromMap(Map<String, dynamic> map) {
    return SlowRequestsBasedTriggerResponse(
      count: map['count'] == null ? null : (map['count']! as int).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      timeInterval: map['timeInterval'] == null ? null : (map['timeInterval']! as String).input(),
      timeTaken: map['timeTaken'] == null ? null : (map['timeTaken']! as String).input(),
    );
  }
}

