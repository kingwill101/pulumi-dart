// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JIT scheduling policies.
class JitSchedulingPolicy {
  final pulumi.Input<String> duration;
  /// The start time of the request.
  final pulumi.Input<String> startTime;
  /// The type of JIT schedule.
  final pulumi.Input<String> type;

  /// Creates a new [JitSchedulingPolicy].
  /// [duration] Required.
  /// [startTime] The start time of the request.
  /// [type] The type of JIT schedule.
  JitSchedulingPolicy({
    required this.duration,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'startTime': startTime,
      'type': type,
    };
  }

  factory JitSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return JitSchedulingPolicy(
      duration: (map['duration'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

