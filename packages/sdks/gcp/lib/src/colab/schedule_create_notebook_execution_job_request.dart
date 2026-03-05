// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request_notebook_execution_job.dart';

class ScheduleCreateNotebookExecutionJobRequest {
  /// The NotebookExecutionJob to create.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob> notebookExecutionJob;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequest].
  /// [notebookExecutionJob] The NotebookExecutionJob to create.
  ScheduleCreateNotebookExecutionJobRequest({
    required this.notebookExecutionJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notebookExecutionJob': pulumi.Input.mapInputValue<ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob, Map<String, dynamic>>(notebookExecutionJob, (value) => value.toMap()),
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequest.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequest(
      notebookExecutionJob: pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap((map['notebookExecutionJob']! as Map).cast<String, dynamic>())),
    );
  }
}

