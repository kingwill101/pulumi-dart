// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';

/// A job represents an instance of a task.
class GoogleCloudDataplexV1JobResponse {
  /// The time when the job ended.
  final pulumi.Input<String> endTime;

  /// Spec related to how a task is executed.
  final pulumi.Input<GoogleCloudDataplexV1TaskExecutionSpecResponse>
  executionSpec;

  /// User-defined labels for the task.
  final pulumi.Input<Map<String, String>> labels;

  /// Additional information about the current state.
  final pulumi.Input<String> message;

  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.
  final pulumi.Input<String> name;

  /// The number of times the job has been retried (excluding the initial attempt).
  final pulumi.Input<int> retryCount;

  /// The underlying service running a job.
  final pulumi.Input<String> service;

  /// The full resource name for the job run under a particular service.
  final pulumi.Input<String> serviceJob;

  /// The time when the job was started.
  final pulumi.Input<String> startTime;

  /// Execution state for the job.
  final pulumi.Input<String> state;

  /// Job execution trigger.
  final pulumi.Input<String> trigger;

  /// System generated globally unique ID for the job.
  final pulumi.Input<String> uid;

  /// Creates a new [GoogleCloudDataplexV1JobResponse].
  /// [endTime] The time when the job ended.
  /// [executionSpec] Spec related to how a task is executed.
  /// [labels] User-defined labels for the task.
  /// [message] Additional information about the current state.
  /// [name] The relative resource name of the job, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.
  /// [retryCount] The number of times the job has been retried (excluding the initial attempt).
  /// [service] The underlying service running a job.
  /// [serviceJob] The full resource name for the job run under a particular service.
  /// [startTime] The time when the job was started.
  /// [state] Execution state for the job.
  /// [trigger] Job execution trigger.
  /// [uid] System generated globally unique ID for the job.
  GoogleCloudDataplexV1JobResponse({
    required this.endTime,
    required this.executionSpec,
    required this.labels,
    required this.message,
    required this.name,
    required this.retryCount,
    required this.service,
    required this.serviceJob,
    required this.startTime,
    required this.state,
    required this.trigger,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'executionSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudDataplexV1TaskExecutionSpecResponse,
            Map<String, dynamic>
          >(executionSpec, (value) => value.toMap()),
      'labels': labels,
      'message': message,
      'name': name,
      'retryCount': retryCount,
      'service': service,
      'serviceJob': serviceJob,
      'startTime': startTime,
      'state': state,
      'trigger': trigger,
      'uid': uid,
    };
  }

  factory GoogleCloudDataplexV1JobResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1JobResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      executionSpec: pulumi.Input.fromValue(
        GoogleCloudDataplexV1TaskExecutionSpecResponse.fromMap(
          (map['executionSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      retryCount: pulumi.Input.fromValue(map['retryCount'] as int),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceJob: pulumi.Input.fromValue(map['serviceJob'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      trigger: pulumi.Input.fromValue(map['trigger'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
