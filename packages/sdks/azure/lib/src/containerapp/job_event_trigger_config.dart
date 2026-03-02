// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_event_trigger_config_scale.dart';

class JobEventTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;
  /// A `scale` block as defined below.
  final pulumi.Input<List<JobEventTriggerConfigScale>>? scales;

  /// Creates a new [JobEventTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  /// [scales] A `scale` block as defined below.
  JobEventTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
    this.scales,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
      'scales': ?pulumi.Input.mapOptionalInputValue<List<JobEventTriggerConfigScale>, List<Map<String, dynamic>>>(scales, (value) => pulumi.Input.encodeList<JobEventTriggerConfigScale, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobEventTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobEventTriggerConfig(
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : (map['replicaCompletionCount'] as int).input(),
      scales: map['scales'] == null ? null : (pulumi.Input.decodeList<JobEventTriggerConfigScale>(map['scales'], (value) => JobEventTriggerConfigScale.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

