// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAssessmentSchedule {
  /// What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final pulumi.Input<String> dayOfWeek;
  /// How many months between assessment runs. Valid values are between `1` and `5`.
  ///
  /// > **Note:** Either one of `weekly_interval` or `monthly_occurrence` must be specified.
  final pulumi.Input<int>? monthlyOccurrence;
  /// What time the assessment will be run. Must be in the format `HH:mm`.
  final pulumi.Input<String> startTime;
  /// How many weeks between assessment runs. Valid values are between `1` and `6`.
  final pulumi.Input<int>? weeklyInterval;

  /// Creates a new [VirtualMachineAssessmentSchedule].
  /// [dayOfWeek] What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  /// [monthlyOccurrence] How many months between assessment runs. Valid values are between `1` and `5`.
  /// [startTime] What time the assessment will be run. Must be in the format `HH:mm`.
  /// [weeklyInterval] How many weeks between assessment runs. Valid values are between `1` and `6`.
  VirtualMachineAssessmentSchedule({
    required this.dayOfWeek,
    this.monthlyOccurrence,
    required this.startTime,
    this.weeklyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'monthlyOccurrence': ?monthlyOccurrence,
      'startTime': startTime,
      'weeklyInterval': ?weeklyInterval,
    };
  }

  factory VirtualMachineAssessmentSchedule.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAssessmentSchedule(
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      monthlyOccurrence: map['monthlyOccurrence'] == null ? null : (map['monthlyOccurrence']! as int).input(),
      startTime: (map['startTime'] as String).input(),
      weeklyInterval: map['weeklyInterval'] == null ? null : (map['weeklyInterval']! as int).input(),
    );
  }
}

