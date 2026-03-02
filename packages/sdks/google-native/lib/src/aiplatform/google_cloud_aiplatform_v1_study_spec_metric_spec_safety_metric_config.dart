// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used in safe optimization to specify threshold levels and risk tolerance.
class GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig {
  /// Desired minimum fraction of safe trials (over total number of trials) that should be targeted by the algorithm at any time during the study (best effort). This should be between 0.0 and 1.0 and a value of 0.0 means that there is no minimum and an algorithm proceeds without targeting any specific fraction. A value of 1.0 means that the algorithm attempts to only Suggest safe Trials.
  final pulumi.Input<double>? desiredMinSafeTrialsFraction;
  /// Safety threshold (boundary value between safe and unsafe). NOTE that if you leave SafetyMetricConfig unset, a default value of 0 will be used.
  final pulumi.Input<double>? safetyThreshold;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig].
  /// [desiredMinSafeTrialsFraction] Desired minimum fraction of safe trials (over total number of trials) that should be targeted by the algorithm at any time during the study (best effort). This should be between 0.0 and 1.0 and a value of 0.0 means that there is no minimum and an algorithm proceeds without targeting any specific fraction. A value of 1.0 means that the algorithm attempts to only Suggest safe Trials.
  /// [safetyThreshold] Safety threshold (boundary value between safe and unsafe). NOTE that if you leave SafetyMetricConfig unset, a default value of 0 will be used.
  GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig({
    this.desiredMinSafeTrialsFraction,
    this.safetyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredMinSafeTrialsFraction': ?desiredMinSafeTrialsFraction,
      'safetyThreshold': ?safetyThreshold,
    };
  }

  factory GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig(
      desiredMinSafeTrialsFraction: map['desiredMinSafeTrialsFraction'] == null ? null : (map['desiredMinSafeTrialsFraction'] as double).input(),
      safetyThreshold: map['safetyThreshold'] == null ? null : (map['safetyThreshold'] as double).input(),
    );
  }
}

