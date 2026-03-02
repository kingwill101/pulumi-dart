// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_schedule_recurrence.dart';

class AlertProcessingRuleActionGroupSchedule {
  /// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  final pulumi.Input<String>? effectiveFrom;
  /// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  final pulumi.Input<String>? effectiveUntil;
  /// A `recurrence` block as defined above.
  final pulumi.Input<AlertProcessingRuleActionGroupScheduleRecurrence>? recurrence;
  /// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AlertProcessingRuleActionGroupSchedule].
  /// [effectiveFrom] Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  /// [effectiveUntil] Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  /// [recurrence] A `recurrence` block as defined above.
  /// [timeZone] The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  AlertProcessingRuleActionGroupSchedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.recurrence,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveFrom': ?effectiveFrom,
      'effectiveUntil': ?effectiveUntil,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<AlertProcessingRuleActionGroupScheduleRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory AlertProcessingRuleActionGroupSchedule.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupSchedule(
      effectiveFrom: map['effectiveFrom'] == null ? null : (map['effectiveFrom']! as String).input(),
      effectiveUntil: map['effectiveUntil'] == null ? null : (map['effectiveUntil']! as String).input(),
      recurrence: map['recurrence'] == null ? null : (AlertProcessingRuleActionGroupScheduleRecurrence.fromMap((map['recurrence']! as Map).cast<String, dynamic>())).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

