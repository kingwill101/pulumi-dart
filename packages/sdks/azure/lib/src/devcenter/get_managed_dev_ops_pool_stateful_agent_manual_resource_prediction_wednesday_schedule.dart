// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule {
  /// The number of standby agents provisioned at this time.
  final pulumi.Input<int> count;
  /// The time of day at which the agent count changes, in 24-hour format `HH:MM:SS`.
  final pulumi.Input<String> time;

  /// Creates a new [GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule].
  /// [count] The number of standby agents provisioned at this time.
  /// [time] The time of day at which the agent count changes, in 24-hour format `HH:MM:SS`.
  const GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule({
    required this.count,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'time': time,
    };
  }

  factory GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatefulAgentManualResourcePredictionWednesdaySchedule(
      count: pulumi.Input.fromValue((map['count'] as num).toInt()),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
