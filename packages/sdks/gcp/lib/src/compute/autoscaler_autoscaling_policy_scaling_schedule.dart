// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscalerAutoscalingPolicyScalingSchedule {
  /// A description of a scaling schedule.
  final pulumi.Input<String>? description;
  /// A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
  final pulumi.Input<bool>? disabled;
  /// The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
  final pulumi.Input<int> durationSec;
  /// Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
  final pulumi.Input<int> minRequiredReplicas;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
  final pulumi.Input<String> schedule;
  /// The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AutoscalerAutoscalingPolicyScalingSchedule].
  /// [description] A description of a scaling schedule.
  /// [disabled] A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect.
  /// [durationSec] The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.
  /// [minRequiredReplicas] Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.
  /// [name] The identifier for this object. Format specified above.
  /// [schedule] The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).
  /// [timeZone] The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  const AutoscalerAutoscalingPolicyScalingSchedule({
    this.description,
    this.disabled,
    required this.durationSec,
    required this.minRequiredReplicas,
    required this.name,
    required this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'durationSec': durationSec,
      'minRequiredReplicas': minRequiredReplicas,
      'name': name,
      'schedule': schedule,
      'timeZone': ?timeZone,
    };
  }

  factory AutoscalerAutoscalingPolicyScalingSchedule.fromMap(Map<String, dynamic> map) {
    return AutoscalerAutoscalingPolicyScalingSchedule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      durationSec: pulumi.Input.fromValue(map['durationSec'] as int),
      minRequiredReplicas: pulumi.Input.fromValue(map['minRequiredReplicas'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

