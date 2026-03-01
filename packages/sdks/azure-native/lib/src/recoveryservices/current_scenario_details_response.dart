// ignore_for_file: unused_element, unnecessary_cast


/// Current scenario details of the protected entity.
class CurrentScenarioDetailsResponse {
  /// ARM Id of the job being executed.
  final String? jobId;
  /// Scenario name.
  final String? scenarioName;
  /// Start time of the workflow.
  final String? startTime;

  /// Creates a new [CurrentScenarioDetailsResponse].
  /// [jobId] ARM Id of the job being executed.
  /// [scenarioName] Scenario name.
  /// [startTime] Start time of the workflow.
  CurrentScenarioDetailsResponse({
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
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      scenarioName: map['scenarioName'] == null ? null : map['scenarioName'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

