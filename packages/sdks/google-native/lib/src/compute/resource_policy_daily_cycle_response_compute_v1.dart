// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for daily operations.
class ResourcePolicyDailyCycleResponseComputeV1 {
  /// Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  final pulumi.Input<int> daysInCycle;
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final pulumi.Input<String> duration;
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String> startTime;

  /// Creates a new [ResourcePolicyDailyCycleResponseComputeV1].
  /// [daysInCycle] Defines a schedule with units measured in days. The value determines how many days pass between the start of each cycle.
  /// [duration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  ResourcePolicyDailyCycleResponseComputeV1({
    required this.daysInCycle,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysInCycle': daysInCycle,
      'duration': duration,
      'startTime': startTime,
    };
  }

  factory ResourcePolicyDailyCycleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyDailyCycleResponseComputeV1(
      daysInCycle: (map['daysInCycle'] as int).input(),
      duration: (map['duration'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

