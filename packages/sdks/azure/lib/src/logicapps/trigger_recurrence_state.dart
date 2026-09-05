// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_recurrence_schedule.dart';

/// Input properties used for looking up and filtering TriggerRecurrence resources.
class TriggerRecurrenceState {
  /// Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`.
  final pulumi.Input<String?>? frequency;
  /// Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours.
  final pulumi.Input<int?>? interval;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? logicAppId;
  /// Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String?>? name;
  /// A `schedule` block as specified below.
  final pulumi.Input<TriggerRecurrenceSchedule?>? schedule;
  /// Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`.
  final pulumi.Input<String?>? startTime;
  /// Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [TriggerRecurrenceState].
  /// [frequency] Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`.
  /// [interval] Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as specified below.
  /// [startTime] Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`.
  /// [timeZone] Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)
  const TriggerRecurrenceState({
    this.frequency,
    this.interval,
    this.logicAppId,
    this.name,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'interval': ?interval,
      'logicAppId': ?logicAppId,
      'name': ?name,
      'schedule': ?pulumi.Input.mapOptionalInputValue<TriggerRecurrenceSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory TriggerRecurrenceState.fromMap(Map<String, dynamic> map) {
    return TriggerRecurrenceState(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      logicAppId: (() { final guardedValue = map['logicAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerRecurrenceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
