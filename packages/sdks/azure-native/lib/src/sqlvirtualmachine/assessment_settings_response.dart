// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_response.dart';

/// Configure SQL best practices Assessment for databases in your SQL virtual machine.
class AssessmentSettingsResponse {
  /// Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  final bool? enable;
  /// Run SQL best practices Assessment immediately on SQL virtual machine.
  final bool? runImmediately;
  /// Schedule for SQL best practices Assessment.
  final ScheduleResponse? schedule;

  /// Creates a new [AssessmentSettingsResponse].
  /// [enable] Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  /// [runImmediately] Run SQL best practices Assessment immediately on SQL virtual machine.
  /// [schedule] Schedule for SQL best practices Assessment.
  AssessmentSettingsResponse({
    this.enable,
    this.runImmediately,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'runImmediately': ?runImmediately,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
    };
  }

  factory AssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentSettingsResponse(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      runImmediately: map['runImmediately'] == null ? null : map['runImmediately'] as bool,
      schedule: map['schedule'] == null ? null : ScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
    );
  }
}

