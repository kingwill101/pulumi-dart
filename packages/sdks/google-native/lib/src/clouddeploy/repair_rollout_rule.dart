// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repair_mode.dart';

/// The `RepairRolloutRule` automation rule will automatically repair a failed `Rollout`.
class RepairRolloutRule {
  /// ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;

  /// Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in `source_phase`. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final pulumi.Input<List<String>>? jobs;

  /// Defines the types of automatic repair actions for failed jobs.
  final pulumi.Input<List<RepairMode>> repairModes;

  /// Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  final pulumi.Input<List<String>>? sourcePhases;

  /// Creates a new [RepairRolloutRule].
  /// [id] ID of the rule. This id must be unique in the `Automation` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [jobs] Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jobs if unspecified or empty. The phase that includes the job must match the phase ID specified in `source_phase`. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// [repairModes] Defines the types of automatic repair actions for failed jobs.
  /// [sourcePhases] Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds only after phase name matched any one in the list, or for all phases if unspecified. This value must consist of lower-case letters, numbers, and hyphens, start with a letter and end with a letter or a number, and have a max length of 63 characters. In other words, it must match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  RepairRolloutRule({
    required this.id,
    this.jobs,
    required this.repairModes,
    this.sourcePhases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jobs': ?jobs,
      'repairModes':
          pulumi.Input.mapInputValue<
            List<RepairMode>,
            List<Map<String, dynamic>>
          >(
            repairModes,
            (value) =>
                pulumi.Input.encodeList<RepairMode, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'sourcePhases': ?sourcePhases,
    };
  }

  factory RepairRolloutRule.fromMap(Map<String, dynamic> map) {
    return RepairRolloutRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      jobs: (() {
        final guardedValue = map['jobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      repairModes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RepairMode>(
          map['repairModes']!,
          (value) => RepairMode.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      sourcePhases: (() {
        final guardedValue = map['sourcePhases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
