// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_result_version_metrics.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3ExperimentResult {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final pulumi.Input<String>? lastUpdateTime;
  /// Version variants and metrics.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>>? versionMetrics;

  /// Creates a new [GoogleCloudDialogflowCxV3ExperimentResult].
  /// [lastUpdateTime] The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  /// [versionMetrics] Version variants and metrics.
  GoogleCloudDialogflowCxV3ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': ?lastUpdateTime,
      'versionMetrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>, List<Map<String, dynamic>>>(versionMetrics, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3ExperimentResult.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResult(
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime'] as String).input(),
      versionMetrics: map['versionMetrics'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>(map['versionMetrics'], (value) => GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

