// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec.dart';

/// Represent spec for search trials.
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec {
  /// The number of failed trials that need to be seen before failing the NasJob. If set to 0, Vertex AI decides how many trials must fail before the whole job fails.
  final pulumi.Input<int>? maxFailedTrialCount;
  /// The maximum number of trials to run in parallel.
  final pulumi.Input<int> maxParallelTrialCount;
  /// The maximum number of Neural Architecture Search (NAS) trials to run.
  final pulumi.Input<int> maxTrialCount;
  /// The spec of a search trial job. The same spec applies to all search trials.
  final pulumi.Input<GoogleCloudAiplatformV1beta1CustomJobSpec> searchTrialJobSpec;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec].
  /// [maxFailedTrialCount] The number of failed trials that need to be seen before failing the NasJob. If set to 0, Vertex AI decides how many trials must fail before the whole job fails.
  /// [maxParallelTrialCount] The maximum number of trials to run in parallel.
  /// [maxTrialCount] The maximum number of Neural Architecture Search (NAS) trials to run.
  /// [searchTrialJobSpec] The spec of a search trial job. The same spec applies to all search trials.
  const GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec({
    this.maxFailedTrialCount,
    required this.maxParallelTrialCount,
    required this.maxTrialCount,
    required this.searchTrialJobSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxFailedTrialCount': ?maxFailedTrialCount,
      'maxParallelTrialCount': maxParallelTrialCount,
      'maxTrialCount': maxTrialCount,
      'searchTrialJobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1CustomJobSpec, Map<String, dynamic>>(searchTrialJobSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec(
      maxFailedTrialCount: (() { final guardedValue = map['maxFailedTrialCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxParallelTrialCount: pulumi.Input.fromValue(map['maxParallelTrialCount'] as int),
      maxTrialCount: pulumi.Input.fromValue(map['maxTrialCount'] as int),
      searchTrialJobSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1CustomJobSpec.fromMap((map['searchTrialJobSpec']! as Map).cast<String, dynamic>())),
    );
  }
}
