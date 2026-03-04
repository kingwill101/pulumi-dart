// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_event_trigger_config_scale_rule.dart';

class JobEventTriggerConfigScale {
  /// Maximum number of job executions that are created for a trigger.
  final pulumi.Input<int>? maxExecutions;

  /// Minimum number of job executions that are created for a trigger.
  final pulumi.Input<int>? minExecutions;

  /// Interval to check each event source in seconds.
  final pulumi.Input<int>? pollingIntervalInSeconds;

  /// A `rules` block as defined below.
  final pulumi.Input<List<JobEventTriggerConfigScaleRule>>? rules;

  /// Creates a new [JobEventTriggerConfigScale].
  /// [maxExecutions] Maximum number of job executions that are created for a trigger.
  /// [minExecutions] Minimum number of job executions that are created for a trigger.
  /// [pollingIntervalInSeconds] Interval to check each event source in seconds.
  /// [rules] A `rules` block as defined below.
  JobEventTriggerConfigScale({
    this.maxExecutions,
    this.minExecutions,
    this.pollingIntervalInSeconds,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExecutions': ?maxExecutions,
      'minExecutions': ?minExecutions,
      'pollingIntervalInSeconds': ?pollingIntervalInSeconds,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobEventTriggerConfigScaleRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  JobEventTriggerConfigScaleRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory JobEventTriggerConfigScale.fromMap(Map<String, dynamic> map) {
    return JobEventTriggerConfigScale(
      maxExecutions: (() {
        final guardedValue = map['maxExecutions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minExecutions: (() {
        final guardedValue = map['minExecutions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pollingIntervalInSeconds: (() {
        final guardedValue = map['pollingIntervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobEventTriggerConfigScaleRule>(
            guardedValue,
            (value) => JobEventTriggerConfigScaleRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
