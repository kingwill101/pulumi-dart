// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The decay curve automated stopping rule builds a Gaussian Process Regressor to predict the final objective value of a Trial based on the already completed Trials and the intermediate measurements of the current Trial. Early stopping is requested for the current Trial if there is very low probability to exceed the optimal value found so far.
class GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse {
  /// True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  final pulumi.Input<bool> useElapsedDuration;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse].
  /// [useElapsedDuration] True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse({
    required this.useElapsedDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useElapsedDuration': useElapsedDuration,
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse(
      useElapsedDuration: pulumi.Input.fromValue(map['useElapsedDuration'] as bool),
    );
  }
}

