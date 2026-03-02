// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_event_response.dart';

/// Job status.
class JobStatusResponse {
  /// The duration of time that the Job spent in status RUNNING.
  final pulumi.Input<String> runDuration;
  /// Job state
  final pulumi.Input<String> state;
  /// Job status events
  final pulumi.Input<List<StatusEventResponse>> statusEvents;
  /// Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup ID.
  final pulumi.Input<Map<String, String>> taskGroups;

  /// Creates a new [JobStatusResponse].
  /// [runDuration] The duration of time that the Job spent in status RUNNING.
  /// [state] Job state
  /// [statusEvents] Job status events
  /// [taskGroups] Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup ID.
  JobStatusResponse({
    required this.runDuration,
    required this.state,
    required this.statusEvents,
    required this.taskGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runDuration': runDuration,
      'state': state,
      'statusEvents': pulumi.Input.mapInputValue<List<StatusEventResponse>, List<Map<String, dynamic>>>(statusEvents, (value) => pulumi.Input.encodeList<StatusEventResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'taskGroups': taskGroups,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      runDuration: (map['runDuration'] as String).input(),
      state: (map['state'] as String).input(),
      statusEvents: (pulumi.Input.decodeList<StatusEventResponse>(map['statusEvents'], (value) => StatusEventResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      taskGroups: ((map['taskGroups'] as Map).cast<String, String>()).input(),
    );
  }
}

