// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_schedule_recurrence.dart';

class AlertProcessingRuleSuppressionSchedule {
  /// Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  final pulumi.Input<String>? effectiveFrom;

  /// Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  final pulumi.Input<String>? effectiveUntil;

  /// A `recurrence` block as defined above.
  final pulumi.Input<AlertProcessingRuleSuppressionScheduleRecurrence>?
  recurrence;

  /// The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  final pulumi.Input<String>? timeZone;

  /// Creates a new [AlertProcessingRuleSuppressionSchedule].
  /// [effectiveFrom] Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
  /// [effectiveUntil] Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
  /// [recurrence] A `recurrence` block as defined above.
  /// [timeZone] The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to `UTC`. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
  AlertProcessingRuleSuppressionSchedule({
    this.effectiveFrom,
    this.effectiveUntil,
    this.recurrence,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveFrom': ?effectiveFrom,
      'effectiveUntil': ?effectiveUntil,
      'recurrence':
          ?pulumi.Input.mapOptionalInputValue<
            AlertProcessingRuleSuppressionScheduleRecurrence,
            Map<String, dynamic>
          >(recurrence, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory AlertProcessingRuleSuppressionSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertProcessingRuleSuppressionSchedule(
      effectiveFrom: (() {
        final guardedValue = map['effectiveFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveUntil: (() {
        final guardedValue = map['effectiveUntil'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertProcessingRuleSuppressionScheduleRecurrence.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
