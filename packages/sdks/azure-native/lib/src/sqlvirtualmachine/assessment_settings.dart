// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule.dart';

/// Configure SQL best practices Assessment for databases in your SQL virtual machine.
class AssessmentSettings {
  /// Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  final pulumi.Input<bool>? enable;
  /// Run SQL best practices Assessment immediately on SQL virtual machine.
  final pulumi.Input<bool>? runImmediately;
  /// Schedule for SQL best practices Assessment.
  final pulumi.Input<Schedule>? schedule;

  /// Creates a new [AssessmentSettings].
  /// [enable] Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  /// [runImmediately] Run SQL best practices Assessment immediately on SQL virtual machine.
  /// [schedule] Schedule for SQL best practices Assessment.
  AssessmentSettings({
    this.enable,
    this.runImmediately,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'runImmediately': ?runImmediately,
      'schedule': ?pulumi.Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory AssessmentSettings.fromMap(Map<String, dynamic> map) {
    return AssessmentSettings(
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      runImmediately: map['runImmediately'] == null ? null : (map['runImmediately']! as bool).input(),
      schedule: map['schedule'] == null ? null : (Schedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

