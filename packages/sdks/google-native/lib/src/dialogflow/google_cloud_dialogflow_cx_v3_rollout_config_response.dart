// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_rollout_config_rollout_step_response.dart';

/// The configuration for auto rollout.
class GoogleCloudDialogflowCxV3RolloutConfigResponse {
  /// The conditions that are used to evaluate the failure of a rollout step. If not specified, no rollout steps will fail. E.g. "containment_rate &lt; 10% OR average_turn_count &lt; 3". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String> failureCondition;
  /// The conditions that are used to evaluate the success of a rollout step. If not specified, all rollout steps will proceed to the next one unless failure conditions are met. E.g. "containment_rate &gt; 60% AND callback_rate &lt; 20%". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final pulumi.Input<String> rolloutCondition;
  /// Steps to roll out a flow version. Steps should be sorted by percentage in ascending order.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3RolloutConfigRolloutStepResponse>> rolloutSteps;

  /// Creates a new [GoogleCloudDialogflowCxV3RolloutConfigResponse].
  /// [failureCondition] The conditions that are used to evaluate the failure of a rollout step. If not specified, no rollout steps will fail. E.g. "containment_rate &lt; 10% OR average_turn_count &lt; 3". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [rolloutCondition] The conditions that are used to evaluate the success of a rollout step. If not specified, all rollout steps will proceed to the next one unless failure conditions are met. E.g. "containment_rate &gt; 60% AND callback_rate &lt; 20%". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  /// [rolloutSteps] Steps to roll out a flow version. Steps should be sorted by percentage in ascending order.
  const GoogleCloudDialogflowCxV3RolloutConfigResponse({
    required this.failureCondition,
    required this.rolloutCondition,
    required this.rolloutSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCondition': failureCondition,
      'rolloutCondition': rolloutCondition,
      'rolloutSteps': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowCxV3RolloutConfigRolloutStepResponse>, List<Map<String, dynamic>>>(rolloutSteps, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3RolloutConfigRolloutStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowCxV3RolloutConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3RolloutConfigResponse(
      failureCondition: pulumi.Input.fromValue(map['failureCondition'] as String),
      rolloutCondition: pulumi.Input.fromValue(map['rolloutCondition'] as String),
      rolloutSteps: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3RolloutConfigRolloutStepResponse>(map['rolloutSteps']!, (value) => GoogleCloudDialogflowCxV3RolloutConfigRolloutStepResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
