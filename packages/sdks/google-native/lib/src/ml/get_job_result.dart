// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_prediction_input_response.dart';
import 'google_cloud_ml_v1_prediction_output_response.dart';
import 'google_cloud_ml_v1_training_input_response.dart';
import 'google_cloud_ml_v1_training_output_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// When the job was created.
  final String createTime;
  /// When the job processing was completed.
  final String endTime;
  /// The details of a failure or a cancellation.
  final String errorMessage;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  final String etag;
  /// The user-specified id of the job.
  final String jobId;
  /// It's only effect when the job is in QUEUED state. If it's positive, it indicates the job's position in the job scheduler. It's 0 when the job is already scheduled.
  final String jobPosition;
  /// Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  final Map<String, String> labels;
  /// Input parameters to create a prediction job.
  final GoogleCloudMlV1PredictionInputResponse predictionInput;
  /// The current prediction job result.
  final GoogleCloudMlV1PredictionOutputResponse predictionOutput;
  /// When the job processing was started.
  final String startTime;
  /// The detailed state of a job.
  final String state;
  /// Input parameters to create a training job.
  final GoogleCloudMlV1TrainingInputResponse trainingInput;
  /// The current training job result.
  final GoogleCloudMlV1TrainingOutputResponse trainingOutput;

  /// Creates a new [GetJobResult].
  /// [createTime] When the job was created.
  /// [endTime] When the job processing was completed.
  /// [errorMessage] The details of a failure or a cancellation.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  /// [jobId] The user-specified id of the job.
  /// [jobPosition] It's only effect when the job is in QUEUED state. If it's positive, it indicates the job's position in the job scheduler. It's 0 when the job is already scheduled.
  /// [labels] Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  /// [predictionInput] Input parameters to create a prediction job.
  /// [predictionOutput] The current prediction job result.
  /// [startTime] When the job processing was started.
  /// [state] The detailed state of a job.
  /// [trainingInput] Input parameters to create a training job.
  /// [trainingOutput] The current training job result.
  GetJobResult({
    required this.createTime,
    required this.endTime,
    required this.errorMessage,
    required this.etag,
    required this.jobId,
    required this.jobPosition,
    required this.labels,
    required this.predictionInput,
    required this.predictionOutput,
    required this.startTime,
    required this.state,
    required this.trainingInput,
    required this.trainingOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'errorMessage': errorMessage,
      'etag': etag,
      'jobId': jobId,
      'jobPosition': jobPosition,
      'labels': labels,
      'predictionInput': predictionInput.toMap(),
      'predictionOutput': predictionOutput.toMap(),
      'startTime': startTime,
      'state': state,
      'trainingInput': trainingInput.toMap(),
      'trainingOutput': trainingOutput.toMap(),
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      errorMessage: map['errorMessage'] as String,
      etag: map['etag'] as String,
      jobId: map['jobId'] as String,
      jobPosition: map['jobPosition'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      predictionInput: GoogleCloudMlV1PredictionInputResponse.fromMap((map['predictionInput']! as Map).cast<String, dynamic>()),
      predictionOutput: GoogleCloudMlV1PredictionOutputResponse.fromMap((map['predictionOutput']! as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      trainingInput: GoogleCloudMlV1TrainingInputResponse.fromMap((map['trainingInput']! as Map).cast<String, dynamic>()),
      trainingOutput: GoogleCloudMlV1TrainingOutputResponse.fromMap((map['trainingOutput']! as Map).cast<String, dynamic>()),
    );
  }
}

