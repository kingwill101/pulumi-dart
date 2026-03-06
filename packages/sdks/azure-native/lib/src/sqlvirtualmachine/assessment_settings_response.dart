// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_response.dart';

/// Configure SQL best practices Assessment for databases in your SQL virtual machine.
class AssessmentSettingsResponse {
  /// Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  final pulumi.Input<bool>? enable;
  /// Run SQL best practices Assessment immediately on SQL virtual machine.
  final pulumi.Input<bool>? runImmediately;
  /// Schedule for SQL best practices Assessment.
  final pulumi.Input<ScheduleResponse>? schedule;

  /// Creates a new [AssessmentSettingsResponse].
  /// [enable] Enable or disable SQL best practices Assessment feature on SQL virtual machine.
  /// [runImmediately] Run SQL best practices Assessment immediately on SQL virtual machine.
  /// [schedule] Schedule for SQL best practices Assessment.
  const AssessmentSettingsResponse({
    this.enable,
    this.runImmediately,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'runImmediately': ?runImmediately,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory AssessmentSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentSettingsResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runImmediately: (() { final guardedValue = map['runImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

