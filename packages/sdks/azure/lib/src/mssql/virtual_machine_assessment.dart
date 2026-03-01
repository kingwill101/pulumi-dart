// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_assessment_schedule.dart';

class VirtualMachineAssessment {
  /// Should Assessment be enabled? Defaults to `true`.
  final bool? enabled;
  /// Should Assessment be run immediately? Defaults to `false`.
  final bool? runImmediately;
  /// An `schedule` block as defined below.
  final VirtualMachineAssessmentSchedule? schedule;

  /// Creates a new [VirtualMachineAssessment].
  /// [enabled] Should Assessment be enabled? Defaults to `true`.
  /// [runImmediately] Should Assessment be run immediately? Defaults to `false`.
  /// [schedule] An `schedule` block as defined below.
  VirtualMachineAssessment({
    this.enabled,
    this.runImmediately,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'runImmediately': ?runImmediately,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory VirtualMachineAssessment.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAssessment(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      runImmediately: map['runImmediately'] == null ? null : map['runImmediately'] as bool,
      schedule: map['schedule'] == null ? null : VirtualMachineAssessmentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

