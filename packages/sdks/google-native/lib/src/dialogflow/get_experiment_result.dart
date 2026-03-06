// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_experiment_definition_response.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result_response.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_config_response.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_state_response.dart';
import 'google_cloud_dialogflow_cx_v3_variants_history_response.dart';

/// Result data returned by getExperiment.
class GetExperimentResult {
  /// Creation time of this experiment.
  final String createTime;
  /// The definition of the experiment.
  final GoogleCloudDialogflowCxV3ExperimentDefinitionResponse definition;
  /// The human-readable description of the experiment.
  final String description;
  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  final String displayName;
  /// End time of this experiment.
  final String endTime;
  /// Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  final String experimentLength;
  /// Last update time of this experiment.
  final String lastUpdateTime;
  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  final String name;
  /// Inference result of the experiment.
  final GoogleCloudDialogflowCxV3ExperimentResultResponse result;
  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  final GoogleCloudDialogflowCxV3RolloutConfigResponse rolloutConfig;
  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  final String rolloutFailureReason;
  /// State of the auto rollout process.
  final GoogleCloudDialogflowCxV3RolloutStateResponse rolloutState;
  /// Start time of this experiment.
  final String startTime;
  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  final String state;
  /// The history of updates to the experiment variants.
  final List<GoogleCloudDialogflowCxV3VariantsHistoryResponse> variantsHistory;

  /// Creates a new [GetExperimentResult].
  /// [createTime] Creation time of this experiment.
  /// [definition] The definition of the experiment.
  /// [description] The human-readable description of the experiment.
  /// [displayName] The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  /// [endTime] End time of this experiment.
  /// [experimentLength] Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  /// [lastUpdateTime] Last update time of this experiment.
  /// [name] The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  /// [result] Inference result of the experiment.
  /// [rolloutConfig] The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  /// [rolloutFailureReason] The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  /// [rolloutState] State of the auto rollout process.
  /// [startTime] Start time of this experiment.
  /// [state] The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  /// [variantsHistory] The history of updates to the experiment variants.
  const GetExperimentResult({
    required this.createTime,
    required this.definition,
    required this.description,
    required this.displayName,
    required this.endTime,
    required this.experimentLength,
    required this.lastUpdateTime,
    required this.name,
    required this.result,
    required this.rolloutConfig,
    required this.rolloutFailureReason,
    required this.rolloutState,
    required this.startTime,
    required this.state,
    required this.variantsHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'definition': definition.toMap(),
      'description': description,
      'displayName': displayName,
      'endTime': endTime,
      'experimentLength': experimentLength,
      'lastUpdateTime': lastUpdateTime,
      'name': name,
      'result': result.toMap(),
      'rolloutConfig': rolloutConfig.toMap(),
      'rolloutFailureReason': rolloutFailureReason,
      'rolloutState': rolloutState.toMap(),
      'startTime': startTime,
      'state': state,
      'variantsHistory': pulumi.Input.encodeList<GoogleCloudDialogflowCxV3VariantsHistoryResponse, Map<String, dynamic>>(variantsHistory, (value) => value.toMap()),
    };
  }

  factory GetExperimentResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentResult(
      createTime: map['createTime'] as String,
      definition: GoogleCloudDialogflowCxV3ExperimentDefinitionResponse.fromMap((map['definition']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      experimentLength: map['experimentLength'] as String,
      lastUpdateTime: map['lastUpdateTime'] as String,
      name: map['name'] as String,
      result: GoogleCloudDialogflowCxV3ExperimentResultResponse.fromMap((map['result']! as Map).cast<String, dynamic>()),
      rolloutConfig: GoogleCloudDialogflowCxV3RolloutConfigResponse.fromMap((map['rolloutConfig']! as Map).cast<String, dynamic>()),
      rolloutFailureReason: map['rolloutFailureReason'] as String,
      rolloutState: GoogleCloudDialogflowCxV3RolloutStateResponse.fromMap((map['rolloutState']! as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      variantsHistory: pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VariantsHistoryResponse>(map['variantsHistory']!, (value) => GoogleCloudDialogflowCxV3VariantsHistoryResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

