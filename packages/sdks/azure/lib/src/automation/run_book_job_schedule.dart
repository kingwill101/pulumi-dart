// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunBookJobSchedule {
  /// The UUID of automation runbook job schedule ID.
  final pulumi.Input<String>? jobScheduleId;
  /// A map of key/value pairs corresponding to the arguments that can be passed to the Runbook.
  ///
  /// &gt; **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Name of a Hybrid Worker Group the Runbook will be executed on.
  final pulumi.Input<String>? runOn;
  /// The name of the Schedule.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [RunBookJobSchedule].
  /// [jobScheduleId] The UUID of automation runbook job schedule ID.
  /// [parameters] A map of key/value pairs corresponding to the arguments that can be passed to the Runbook.
  /// [runOn] Name of a Hybrid Worker Group the Runbook will be executed on.
  /// [scheduleName] The name of the Schedule.
  RunBookJobSchedule({
    this.jobScheduleId,
    this.parameters,
    this.runOn,
    required this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobScheduleId': ?jobScheduleId,
      'parameters': ?parameters,
      'runOn': ?runOn,
      'scheduleName': scheduleName,
    };
  }

  factory RunBookJobSchedule.fromMap(Map<String, dynamic> map) {
    return RunBookJobSchedule(
      jobScheduleId: (() { final guardedValue = map['jobScheduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      runOn: (() { final guardedValue = map['runOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleName: pulumi.Input.fromValue(map['scheduleName'] as String),
    );
  }
}

