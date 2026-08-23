// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_notebook_execution_job_request_notebook_execution_job.dart';

class AiScheduleCreateNotebookExecutionJobRequest {
  /// NotebookExecutionJob represents an instance of a notebook execution.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob> notebookExecutionJob;
  /// User specified ID for the NotebookExecutionJob.
  final pulumi.Input<String>? notebookExecutionJobId;
  /// The resource name of the Location to create the NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
  final pulumi.Input<String> parent;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequest].
  /// [notebookExecutionJob] NotebookExecutionJob represents an instance of a notebook execution.
  /// [notebookExecutionJobId] User specified ID for the NotebookExecutionJob.
  /// [parent] The resource name of the Location to create the NotebookExecutionJob. Format: `projects/{project}/locations/{location}`
  const AiScheduleCreateNotebookExecutionJobRequest({
    required this.notebookExecutionJob,
    this.notebookExecutionJobId,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notebookExecutionJob': pulumi.Input.mapInputValue<AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob, Map<String, dynamic>>(notebookExecutionJob, (value) => value.toMap()),
      'notebookExecutionJobId': ?notebookExecutionJobId,
      'parent': parent,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequest.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequest(
      notebookExecutionJob: pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap((map['notebookExecutionJob']! as Map).cast<String, dynamic>())),
      notebookExecutionJobId: (() { final guardedValue = map['notebookExecutionJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}
