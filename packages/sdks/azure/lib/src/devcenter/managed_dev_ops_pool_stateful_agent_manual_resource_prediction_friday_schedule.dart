// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule {
  /// The number of standby agents to provision at this time. Possible values range between `0` and `maximumConcurrency`.
  final pulumi.Input<int> count;
  /// The time of day at which the agent count changes, in 24-hour format `HH:MM:SS`.
  final pulumi.Input<String> time;

  /// Creates a new [ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule].
  /// [count] The number of standby agents to provision at this time. Possible values range between `0` and `maximumConcurrency`.
  /// [time] The time of day at which the agent count changes, in 24-hour format `HH:MM:SS`.
  const ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule({
    required this.count,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'time': time,
    };
  }

  factory ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatefulAgentManualResourcePredictionFridaySchedule(
      count: pulumi.Input.fromValue(map['count'] as int),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
