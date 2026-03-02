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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<JobEventTriggerConfigScaleRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<JobEventTriggerConfigScaleRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobEventTriggerConfigScale.fromMap(Map<String, dynamic> map) {
    return JobEventTriggerConfigScale(
      maxExecutions: map['maxExecutions'] == null ? null : (map['maxExecutions'] as int).input(),
      minExecutions: map['minExecutions'] == null ? null : (map['minExecutions'] as int).input(),
      pollingIntervalInSeconds: map['pollingIntervalInSeconds'] == null ? null : (map['pollingIntervalInSeconds'] as int).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<JobEventTriggerConfigScaleRule>(map['rules'], (value) => JobEventTriggerConfigScaleRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

