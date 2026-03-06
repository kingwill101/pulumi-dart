// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostPoolScheduledAgentUpdatesSchedule {
  /// The day of the week on which agent updates should be performed. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`
  final pulumi.Input<String> dayOfWeek;
  /// The hour of day the update window should start. The update is a 2 hour period following the hour provided. The value should be provided as a number between 0 and 23, with 0 being midnight and 23 being 11pm. A leading zero should not be used.
  final pulumi.Input<int> hourOfDay;

  /// Creates a new [HostPoolScheduledAgentUpdatesSchedule].
  /// [dayOfWeek] The day of the week on which agent updates should be performed. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, and `Sunday`
  /// [hourOfDay] The hour of day the update window should start. The update is a 2 hour period following the hour provided. The value should be provided as a number between 0 and 23, with 0 being midnight and 23 being 11pm. A leading zero should not be used.
  const HostPoolScheduledAgentUpdatesSchedule({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'hourOfDay': hourOfDay,
    };
  }

  factory HostPoolScheduledAgentUpdatesSchedule.fromMap(Map<String, dynamic> map) {
    return HostPoolScheduledAgentUpdatesSchedule(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
    );
  }
}

