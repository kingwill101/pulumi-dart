import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_prediction_input_response.dart';
import 'google_cloud_ml_v1_prediction_output_response.dart';
import 'google_cloud_ml_v1_training_input_response.dart';
import 'google_cloud_ml_v1_training_output_response.dart';
import 'job_args.dart';

/// Creates a training or a batch prediction job.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Job extends pulumi.CustomResource {
  /// When the job was created.
  late final pulumi.Output<String> createTime;

  /// When the job processing was completed.
  late final pulumi.Output<String> endTime;

  /// The details of a failure or a cancellation.
  late final pulumi.Output<String> errorMessage;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  late final pulumi.Output<String> etag;

  /// The user-specified id of the job.
  late final pulumi.Output<String> jobId;

  /// It's only effect when the job is in QUEUED state. If it's positive, it indicates the job's position in the job scheduler. It's 0 when the job is already scheduled.
  late final pulumi.Output<String> jobPosition;

  /// Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// Input parameters to create a prediction job.
  late final pulumi.Output<GoogleCloudMlV1PredictionInputResponse>
  predictionInput;

  /// The current prediction job result.
  late final pulumi.Output<GoogleCloudMlV1PredictionOutputResponse>
  predictionOutput;
  late final pulumi.Output<String> project;

  /// When the job processing was started.
  late final pulumi.Output<String> startTime;

  /// The detailed state of a job.
  late final pulumi.Output<String> state;

  /// Input parameters to create a training job.
  late final pulumi.Output<GoogleCloudMlV1TrainingInputResponse> trainingInput;

  /// The current training job result.
  late final pulumi.Output<GoogleCloudMlV1TrainingOutputResponse>
  trainingOutput;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_ml_v1_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:ml/v1:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    errorMessage = registerOutput<String>('errorMessage');
    etag = registerOutput<String>('etag');
    jobId = registerOutput<String>('jobId');
    jobPosition = registerOutput<String>('jobPosition');
    labels = registerOutput<Map<String, String>>('labels');
    predictionInput = registerOutput<GoogleCloudMlV1PredictionInputResponse>(
      'predictionInput',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudMlV1PredictionInputResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    predictionOutput = registerOutput<GoogleCloudMlV1PredictionOutputResponse>(
      'predictionOutput',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudMlV1PredictionOutputResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    trainingInput = registerOutput<GoogleCloudMlV1TrainingInputResponse>(
      'trainingInput',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudMlV1TrainingInputResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    trainingOutput = registerOutput<GoogleCloudMlV1TrainingOutputResponse>(
      'trainingOutput',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudMlV1TrainingOutputResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
