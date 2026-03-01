// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';

/// Represent spec for train trials.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse {
  /// Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final int frequency;
  /// The maximum number of trials to run in parallel.
  final int maxParallelTrialCount;
  /// The spec of a train trial job. The same spec applies to all train trials.
  final GoogleCloudAiplatformV1CustomJobSpecResponse trainTrialJobSpec;

  /// Creates a new [GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse].
  /// [frequency] Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  /// [maxParallelTrialCount] The maximum number of trials to run in parallel.
  /// [trainTrialJobSpec] The spec of a train trial job. The same spec applies to all train trials.
  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse({
    required this.frequency,
    required this.maxParallelTrialCount,
    required this.trainTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'maxParallelTrialCount': maxParallelTrialCount,
      'trainTrialJobSpec': trainTrialJobSpec.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpecResponse(
      frequency: map['frequency'] as int,
      maxParallelTrialCount: map['maxParallelTrialCount'] as int,
      trainTrialJobSpec: GoogleCloudAiplatformV1CustomJobSpecResponse.fromMap((map['trainTrialJobSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

