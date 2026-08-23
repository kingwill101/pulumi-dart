// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used in safe optimization to specify threshold levels and risk tolerance.
class GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse {
  /// Desired minimum fraction of safe trials (over total number of trials) that should be targeted by the algorithm at any time during the study (best effort). This should be between 0.0 and 1.0 and a value of 0.0 means that there is no minimum and an algorithm proceeds without targeting any specific fraction. A value of 1.0 means that the algorithm attempts to only Suggest safe Trials.
  final pulumi.Input<double> desiredMinSafeTrialsFraction;
  /// Safety threshold (boundary value between safe and unsafe). NOTE that if you leave SafetyMetricConfig unset, a default value of 0 will be used.
  final pulumi.Input<double> safetyThreshold;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse].
  /// [desiredMinSafeTrialsFraction] Desired minimum fraction of safe trials (over total number of trials) that should be targeted by the algorithm at any time during the study (best effort). This should be between 0.0 and 1.0 and a value of 0.0 means that there is no minimum and an algorithm proceeds without targeting any specific fraction. A value of 1.0 means that the algorithm attempts to only Suggest safe Trials.
  /// [safetyThreshold] Safety threshold (boundary value between safe and unsafe). NOTE that if you leave SafetyMetricConfig unset, a default value of 0 will be used.
  const GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse({
    required this.desiredMinSafeTrialsFraction,
    required this.safetyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredMinSafeTrialsFraction': desiredMinSafeTrialsFraction,
      'safetyThreshold': safetyThreshold,
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse(
      desiredMinSafeTrialsFraction: pulumi.Input.fromValue(map['desiredMinSafeTrialsFraction'] as double),
      safetyThreshold: pulumi.Input.fromValue(map['safetyThreshold'] as double),
    );
  }
}
