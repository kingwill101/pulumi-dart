// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_version_metrics.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3beta1ExperimentResult {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final pulumi.Input<String>? lastUpdateTime;

  /// Version variants and metrics.
  final pulumi.Input<
    List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>
  >?
  versionMetrics;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResult].
  /// [lastUpdateTime] The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  /// [versionMetrics] Version variants and metrics.
  GoogleCloudDialogflowCxV3beta1ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdateTime': ?lastUpdateTime,
      'versionMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>,
            List<Map<String, dynamic>>
          >(
            versionMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResult(
      lastUpdateTime: (() {
        final guardedValue = map['lastUpdateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionMetrics: (() {
        final guardedValue = map['versionMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
          >(
            guardedValue,
            (value) =>
                GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
