// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_metric_spec.dart';
import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_multi_trial_algorithm.dart';
import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_search_trial_spec.dart';
import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_train_trial_spec.dart';

/// The spec of multi-trial Neural Architecture Search (NAS).
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec {
  /// Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec>? metric;
  /// The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm>? multiTrialAlgorithm;
  /// Spec for search trials.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec> searchTrialSpec;
  /// Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  final pulumi.Input<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec>? trainTrialSpec;

  /// Creates a new [GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec].
  /// [metric] Metric specs for the NAS job. Validation for this field is done at `multi_trial_algorithm_spec` field.
  /// [multiTrialAlgorithm] The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
  /// [searchTrialSpec] Spec for search trials.
  /// [trainTrialSpec] Spec for train trials. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec({
    this.metric,
    this.multiTrialAlgorithm,
    required this.searchTrialSpec,
    this.trainTrialSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'multiTrialAlgorithm': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm, String>(multiTrialAlgorithm, (value) => value.value),
      'searchTrialSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec, Map<String, dynamic>>(searchTrialSpec, (value) => value.toMap()),
      'trainTrialSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec, Map<String, dynamic>>(trainTrialSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec(
      metric: map['metric'] == null ? null : (GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.fromMap((map['metric']! as Map).cast<String, dynamic>())).input(),
      multiTrialAlgorithm: map['multiTrialAlgorithm'] == null ? null : (GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm.fromValue(map['multiTrialAlgorithm']! as String)).input(),
      searchTrialSpec: (GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec.fromMap((map['searchTrialSpec'] as Map).cast<String, dynamic>())).input(),
      trainTrialSpec: map['trainTrialSpec'] == null ? null : (GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.fromMap((map['trainTrialSpec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

