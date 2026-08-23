// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job.dart';

class ScheduleCreateNotebookExecutionJobRequest {
  /// The NotebookExecutionJob to create.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob> notebookExecutionJob;
  /// (Output)
  /// User specified ID for the NotebookExecutionJob.
  final pulumi.Input<String>? notebookExecutionJobId;
  /// The resource name of the Location to create the NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
  final pulumi.Input<String>? parent;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequest].
  /// [notebookExecutionJob] The NotebookExecutionJob to create.
  /// [notebookExecutionJobId] (Output)
  /// [parent] The resource name of the Location to create the NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
  const ScheduleCreateNotebookExecutionJobRequest({
    required this.notebookExecutionJob,
    this.notebookExecutionJobId,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notebookExecutionJob': pulumi.Input.mapInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob, Map<String, dynamic>>(notebookExecutionJob, (value) => value.toMap()),
      'notebookExecutionJobId': ?notebookExecutionJobId,
      'parent': ?parent,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequest.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequest(
      notebookExecutionJob: pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap((map['notebookExecutionJob']! as Map).cast<String, dynamic>())),
      notebookExecutionJobId: (() { final guardedValue = map['notebookExecutionJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
