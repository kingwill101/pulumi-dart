// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final pulumi.Input<String> day;

  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  final pulumi.Input<String> duration;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final pulumi.Input<String> startTime;

  /// Creates a new [ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta].
  /// [day] Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  /// [duration] [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTime': startTime,
    };
  }

  factory ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
