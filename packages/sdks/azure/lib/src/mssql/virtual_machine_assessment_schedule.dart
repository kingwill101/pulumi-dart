// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineAssessmentSchedule {
  /// What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  final pulumi.Input<String> dayOfWeek;
  /// How many months between assessment runs. Valid values are between `1` and `5`.
  ///
  /// &gt; **Note:** Either one of `weeklyInterval` or `monthlyOccurrence` must be specified.
  final pulumi.Input<int?>? monthlyOccurrence;
  /// What time the assessment will be run. Must be in the format `HH:mm`.
  final pulumi.Input<String> startTime;
  /// How many weeks between assessment runs. Valid values are between `1` and `6`.
  final pulumi.Input<int?>? weeklyInterval;

  /// Creates a new [VirtualMachineAssessmentSchedule].
  /// [dayOfWeek] What day of the week the assessment will be run. Possible values are `Friday`, `Monday`, `Saturday`, `Sunday`, `Thursday`, `Tuesday` and `Wednesday`.
  /// [monthlyOccurrence] How many months between assessment runs. Valid values are between `1` and `5`.
  /// [startTime] What time the assessment will be run. Must be in the format `HH:mm`.
  /// [weeklyInterval] How many weeks between assessment runs. Valid values are between `1` and `6`.
  const VirtualMachineAssessmentSchedule({
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
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      monthlyOccurrence: (() { final guardedValue = map['monthlyOccurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      weeklyInterval: (() { final guardedValue = map['weeklyInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
