// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for hourly operations.
class ResourcePolicyHourlyCycleResponseComputeV1 {
  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  final pulumi.Input<String> duration;
  /// Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  final pulumi.Input<int> hoursInCycle;
  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final pulumi.Input<String> startTime;

  /// Creates a new [ResourcePolicyHourlyCycleResponseComputeV1].
  /// [duration] [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  /// [hoursInCycle] Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  const ResourcePolicyHourlyCycleResponseComputeV1({
    required this.duration,
    required this.hoursInCycle,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'hoursInCycle': hoursInCycle,
      'startTime': startTime,
    };
  }

  factory ResourcePolicyHourlyCycleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyHourlyCycleResponseComputeV1(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      hoursInCycle: pulumi.Input.fromValue(map['hoursInCycle'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

