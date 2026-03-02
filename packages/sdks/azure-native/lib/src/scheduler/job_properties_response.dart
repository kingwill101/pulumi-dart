// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_action_response.dart';
import 'job_recurrence_response.dart';
import 'job_status_response.dart';

class JobPropertiesResponse {
  /// Gets or sets the job action.
  final pulumi.Input<JobActionResponse>? action;
  /// Gets or sets the job recurrence.
  final pulumi.Input<JobRecurrenceResponse>? recurrence;
  /// Gets or sets the job start time.
  final pulumi.Input<String>? startTime;
  /// Gets or set the job state.
  final pulumi.Input<String>? state;
  /// Gets the job status.
  final pulumi.Input<JobStatusResponse> status;

  /// Creates a new [JobPropertiesResponse].
  /// [action] Gets or sets the job action.
  /// [recurrence] Gets or sets the job recurrence.
  /// [startTime] Gets or sets the job start time.
  /// [state] Gets or set the job state.
  /// [status] Gets the job status.
  JobPropertiesResponse({
    this.action,
    this.recurrence,
    this.startTime,
    this.state,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<JobActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'recurrence': ?pulumi.Input.mapOptionalInputValue<JobRecurrenceResponse, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'startTime': ?startTime,
      'state': ?state,
      'status': pulumi.Input.mapInputValue<JobStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory JobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobPropertiesResponse(
      action: map['action'] == null ? null : (JobActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      recurrence: map['recurrence'] == null ? null : (JobRecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: (JobStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

