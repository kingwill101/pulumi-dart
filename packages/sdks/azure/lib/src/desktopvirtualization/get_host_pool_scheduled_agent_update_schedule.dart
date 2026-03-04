// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostPoolScheduledAgentUpdateSchedule {
  /// The day of the week on which agent updates should be performed.
  final pulumi.Input<String> dayOfWeek;

  /// The hour of day the update window should start.
  final pulumi.Input<int> hourOfDay;

  /// Creates a new [GetHostPoolScheduledAgentUpdateSchedule].
  /// [dayOfWeek] The day of the week on which agent updates should be performed.
  /// [hourOfDay] The hour of day the update window should start.
  GetHostPoolScheduledAgentUpdateSchedule({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dayOfWeek': dayOfWeek, 'hourOfDay': hourOfDay};
  }

  factory GetHostPoolScheduledAgentUpdateSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHostPoolScheduledAgentUpdateSchedule(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
    );
  }
}
