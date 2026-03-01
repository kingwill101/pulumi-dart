// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for ConvexAutomatedStoppingSpec. When there are enough completed trials (configured by min_measurement_count), for pending trials with enough measurements and steps, the policy first computes an overestimate of the objective value at max_num_steps according to the slope of the incomplete objective value curve. No prediction can be made if the curve is completely flat. If the overestimation is worse than the best objective value of the completed trials, this pending trial will be early-stopped, but a last measurement will be added to the pending trial with max_num_steps and predicted objective value from the autoregression model.
class GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec {
  /// The hyper-parameter name used in the tuning job that stands for learning rate. Leave it blank if learning rate is not in a parameter in tuning. The learning_rate is used to estimate the objective value of the ongoing trial.
  final String? learningRateParameterName;
  /// Steps used in predicting the final objective for early stopped trials. In general, it's set to be the same as the defined steps in training / tuning. If not defined, it will learn it from the completed trials. When use_steps is false, this field is set to the maximum elapsed seconds.
  final String? maxStepCount;
  /// The minimal number of measurements in a Trial. Early-stopping checks will not trigger if less than min_measurement_count+1 completed trials or pending trials with less than min_measurement_count measurements. If not defined, the default value is 5.
  final String? minMeasurementCount;
  /// Minimum number of steps for a trial to complete. Trials which do not have a measurement with step_count > min_step_count won't be considered for early stopping. It's ok to set it to 0, and a trial can be early stopped at any stage. By default, min_step_count is set to be one-tenth of the max_step_count. When use_elapsed_duration is true, this field is set to the minimum elapsed seconds.
  final String? minStepCount;
  /// ConvexAutomatedStoppingSpec by default only updates the trials that needs to be early stopped using a newly trained auto-regressive model. When this flag is set to True, all stopped trials from the beginning are potentially updated in terms of their `final_measurement`. Also, note that the training logic of autoregressive models is different in this case. Enabling this option has shown better results and this may be the default option in the future.
  final bool? updateAllStoppedTrials;
  /// This bool determines whether or not the rule is applied based on elapsed_secs or steps. If use_elapsed_duration==false, the early stopping decision is made according to the predicted objective values according to the target steps. If use_elapsed_duration==true, elapsed_secs is used instead of steps. Also, in this case, the parameters max_num_steps and min_num_steps are overloaded to contain max_elapsed_seconds and min_elapsed_seconds.
  final bool? useElapsedDuration;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec].
  /// [learningRateParameterName] The hyper-parameter name used in the tuning job that stands for learning rate. Leave it blank if learning rate is not in a parameter in tuning. The learning_rate is used to estimate the objective value of the ongoing trial.
  /// [maxStepCount] Steps used in predicting the final objective for early stopped trials. In general, it's set to be the same as the defined steps in training / tuning. If not defined, it will learn it from the completed trials. When use_steps is false, this field is set to the maximum elapsed seconds.
  /// [minMeasurementCount] The minimal number of measurements in a Trial. Early-stopping checks will not trigger if less than min_measurement_count+1 completed trials or pending trials with less than min_measurement_count measurements. If not defined, the default value is 5.
  /// [minStepCount] Minimum number of steps for a trial to complete. Trials which do not have a measurement with step_count > min_step_count won't be considered for early stopping. It's ok to set it to 0, and a trial can be early stopped at any stage. By default, min_step_count is set to be one-tenth of the max_step_count. When use_elapsed_duration is true, this field is set to the minimum elapsed seconds.
  /// [updateAllStoppedTrials] ConvexAutomatedStoppingSpec by default only updates the trials that needs to be early stopped using a newly trained auto-regressive model. When this flag is set to True, all stopped trials from the beginning are potentially updated in terms of their `final_measurement`. Also, note that the training logic of autoregressive models is different in this case. Enabling this option has shown better results and this may be the default option in the future.
  /// [useElapsedDuration] This bool determines whether or not the rule is applied based on elapsed_secs or steps. If use_elapsed_duration==false, the early stopping decision is made according to the predicted objective values according to the target steps. If use_elapsed_duration==true, elapsed_secs is used instead of steps. Also, in this case, the parameters max_num_steps and min_num_steps are overloaded to contain max_elapsed_seconds and min_elapsed_seconds.
  GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec({
    this.learningRateParameterName,
    this.maxStepCount,
    this.minMeasurementCount,
    this.minStepCount,
    this.updateAllStoppedTrials,
    this.useElapsedDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'learningRateParameterName': ?learningRateParameterName,
      'maxStepCount': ?maxStepCount,
      'minMeasurementCount': ?minMeasurementCount,
      'minStepCount': ?minStepCount,
      'updateAllStoppedTrials': ?updateAllStoppedTrials,
      'useElapsedDuration': ?useElapsedDuration,
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec(
      learningRateParameterName: map['learningRateParameterName'] == null ? null : map['learningRateParameterName'] as String,
      maxStepCount: map['maxStepCount'] == null ? null : map['maxStepCount'] as String,
      minMeasurementCount: map['minMeasurementCount'] == null ? null : map['minMeasurementCount'] as String,
      minStepCount: map['minStepCount'] == null ? null : map['minStepCount'] as String,
      updateAllStoppedTrials: map['updateAllStoppedTrials'] == null ? null : map['updateAllStoppedTrials'] as bool,
      useElapsedDuration: map['useElapsedDuration'] == null ? null : map['useElapsedDuration'] as bool,
    );
  }
}

