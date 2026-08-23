// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_assessment_schedule.dart';

class VirtualMachineAssessment {
  /// Should Assessment be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should Assessment be run immediately? Defaults to `false`.
  final pulumi.Input<bool>? runImmediately;
  /// An `schedule` block as defined below.
  final pulumi.Input<VirtualMachineAssessmentSchedule>? schedule;

  /// Creates a new [VirtualMachineAssessment].
  /// [enabled] Should Assessment be enabled? Defaults to `true`.
  /// [runImmediately] Should Assessment be run immediately? Defaults to `false`.
  /// [schedule] An `schedule` block as defined below.
  const VirtualMachineAssessment({
    this.enabled,
    this.runImmediately,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'runImmediately': ?runImmediately,
      'schedule': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAssessmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory VirtualMachineAssessment.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAssessment(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runImmediately: (() { final guardedValue = map['runImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAssessmentSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
