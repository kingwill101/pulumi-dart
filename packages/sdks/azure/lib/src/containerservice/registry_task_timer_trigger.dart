// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskTimerTrigger {
  /// Should the trigger be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name which should be used for this trigger.
  final pulumi.Input<String> name;
  /// The CRON expression for the task schedule.
  final pulumi.Input<String> schedule;

  /// Creates a new [RegistryTaskTimerTrigger].
  /// [enabled] Should the trigger be enabled? Defaults to `true`.
  /// [name] The name which should be used for this trigger.
  /// [schedule] The CRON expression for the task schedule.
  const RegistryTaskTimerTrigger({
    this.enabled,
    required this.name,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'name': name,
      'schedule': schedule,
    };
  }

  factory RegistryTaskTimerTrigger.fromMap(Map<String, dynamic> map) {
    return RegistryTaskTimerTrigger(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}
