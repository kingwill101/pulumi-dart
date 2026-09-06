// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Current scenario details of the protected entity.
class CurrentScenarioDetailsResponse {
  /// ARM Id of the job being executed.
  final pulumi.Input<String?>? jobId;
  /// Scenario name.
  final pulumi.Input<String?>? scenarioName;
  /// Start time of the workflow.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [CurrentScenarioDetailsResponse].
  /// [jobId] ARM Id of the job being executed.
  /// [scenarioName] Scenario name.
  /// [startTime] Start time of the workflow.
  const CurrentScenarioDetailsResponse({
    this.jobId,
    this.scenarioName,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobId': ?jobId,
      'scenarioName': ?scenarioName,
      'startTime': ?startTime,
    };
  }

  factory CurrentScenarioDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CurrentScenarioDetailsResponse(
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenarioName: (() { final guardedValue = map['scenarioName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
