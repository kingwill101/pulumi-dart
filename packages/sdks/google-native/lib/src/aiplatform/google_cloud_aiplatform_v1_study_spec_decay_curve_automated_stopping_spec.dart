// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The decay curve automated stopping rule builds a Gaussian Process Regressor to predict the final objective value of a Trial based on the already completed Trials and the intermediate measurements of the current Trial. Early stopping is requested for the current Trial if there is very low probability to exceed the optimal value found so far.
class GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec {
  /// True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  final pulumi.Input<bool>? useElapsedDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec].
  /// [useElapsedDuration] True if Measurement.elapsed_duration is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.step_count will be used as the x-axis.
  GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec({
    this.useElapsedDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useElapsedDuration': ?useElapsedDuration,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec(
      useElapsedDuration: map['useElapsedDuration'] == null ? null : (map['useElapsedDuration']! as bool).input(),
    );
  }
}

