// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec.dart';

/// Represent spec for train trials.
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec {
  /// Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final pulumi.Input<int> frequency;

  /// The maximum number of trials to run in parallel.
  final pulumi.Input<int> maxParallelTrialCount;

  /// The spec of a train trial job. The same spec applies to all train trials.
  final pulumi.Input<GoogleCloudAiplatformV1beta1CustomJobSpec>
  trainTrialJobSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec].
  /// [frequency] Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  /// [maxParallelTrialCount] The maximum number of trials to run in parallel.
  /// [trainTrialJobSpec] The spec of a train trial job. The same spec applies to all train trials.
  GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec({
    required this.frequency,
    required this.maxParallelTrialCount,
    required this.trainTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': frequency,
      'maxParallelTrialCount': maxParallelTrialCount,
      'trainTrialJobSpec':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1CustomJobSpec,
            Map<String, dynamic>
          >(trainTrialJobSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec(
      frequency: pulumi.Input.fromValue(map['frequency'] as int),
      maxParallelTrialCount: pulumi.Input.fromValue(
        map['maxParallelTrialCount'] as int,
      ),
      trainTrialJobSpec: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1CustomJobSpec.fromMap(
          (map['trainTrialJobSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
