// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_rollout_config_rollout_step.dart';

/// The configuration for auto rollout.
class GoogleCloudDialogflowCxV3beta1RolloutConfig {
  /// The conditions that are used to evaluate the failure of a rollout step. If not specified, no rollout steps will fail. E.g. "containment_rate < 10% OR average_turn_count < 3". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String>? failureCondition;
  /// The conditions that are used to evaluate the success of a rollout step. If not specified, all rollout steps will proceed to the next one unless failure conditions are met. E.g. "containment_rate > 60% AND callback_rate < 20%". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String>? rolloutCondition;
  /// Steps to roll out a flow version. Steps should be sorted by percentage in ascending order.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>>? rolloutSteps;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1RolloutConfig].
  /// [failureCondition] The conditions that are used to evaluate the failure of a rollout step. If not specified, no rollout steps will fail. E.g. "containment_rate < 10% OR average_turn_count < 3". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [rolloutCondition] The conditions that are used to evaluate the success of a rollout step. If not specified, all rollout steps will proceed to the next one unless failure conditions are met. E.g. "containment_rate > 60% AND callback_rate < 20%". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [rolloutSteps] Steps to roll out a flow version. Steps should be sorted by percentage in ascending order.
  GoogleCloudDialogflowCxV3beta1RolloutConfig({
    this.failureCondition,
    this.rolloutCondition,
    this.rolloutSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCondition': ?failureCondition,
      'rolloutCondition': ?rolloutCondition,
      'rolloutSteps': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>, List<Map<String, dynamic>>>(rolloutSteps, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1RolloutConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1RolloutConfig(
      failureCondition: map['failureCondition'] == null ? null : (map['failureCondition'] as String).input(),
      rolloutCondition: map['rolloutCondition'] == null ? null : (map['rolloutCondition'] as String).input(),
      rolloutSteps: map['rolloutSteps'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>(map['rolloutSteps'], (value) => GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

