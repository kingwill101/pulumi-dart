// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_definition_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_config_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_state_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_variants_history_response.dart';

/// Result data returned by getExperiment.
class GetExperimentDialogflowV3beta1Result {
  /// Creation time of this experiment.
  final String? createTime;
  /// The definition of the experiment.
  final GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse? definition;
  /// The human-readable description of the experiment.
  final String? description;
  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  final String? displayName;
  /// End time of this experiment.
  final String? endTime;
  /// Maximum number of days to run the experiment. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  final String? experimentLength;
  /// Last update time of this experiment.
  final String? lastUpdateTime;
  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  final String? name;
  /// Inference result of the experiment.
  final GoogleCloudDialogflowCxV3beta1ExperimentResultResponse? result;
  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  final GoogleCloudDialogflowCxV3beta1RolloutConfigResponse? rolloutConfig;
  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  final String? rolloutFailureReason;
  /// State of the auto rollout process.
  final GoogleCloudDialogflowCxV3beta1RolloutStateResponse? rolloutState;
  /// Start time of this experiment.
  final String? startTime;
  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  final String? state;
  /// The history of updates to the experiment variants.
  final List<GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse>? variantsHistory;

  /// Creates a new [GetExperimentDialogflowV3beta1Result].
  /// [createTime] Creation time of this experiment.
  /// [definition] The definition of the experiment.
  /// [description] The human-readable description of the experiment.
  /// [displayName] The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  /// [endTime] End time of this experiment.
  /// [experimentLength] Maximum number of days to run the experiment. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  /// [lastUpdateTime] Last update time of this experiment.
  /// [name] The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  /// [result] Inference result of the experiment.
  /// [rolloutConfig] The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  /// [rolloutFailureReason] The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  /// [rolloutState] State of the auto rollout process.
  /// [startTime] Start time of this experiment.
  /// [state] The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  /// [variantsHistory] The history of updates to the experiment variants.
  const GetExperimentDialogflowV3beta1Result({
    this.createTime,
    this.definition,
    this.description,
    this.displayName,
    this.endTime,
    this.experimentLength,
    this.lastUpdateTime,
    this.name,
    this.result,
    this.rolloutConfig,
    this.rolloutFailureReason,
    this.rolloutState,
    this.startTime,
    this.state,
    this.variantsHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'definition': ?definition?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'experimentLength': ?experimentLength,
      'lastUpdateTime': ?lastUpdateTime,
      'name': ?name,
      'result': ?result?.toMap(),
      'rolloutConfig': ?rolloutConfig?.toMap(),
      'rolloutFailureReason': ?rolloutFailureReason,
      'rolloutState': ?rolloutState?.toMap(),
      'startTime': ?startTime,
      'state': ?state,
      'variantsHistory': ?(() { final guardedValue = variantsHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetExperimentDialogflowV3beta1Result.fromMap(Map<String, dynamic> map) {
    return GetExperimentDialogflowV3beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      experimentLength: (() { final guardedValue = map['experimentLength']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1ExperimentResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rolloutConfig: (() { final guardedValue = map['rolloutConfig']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1RolloutConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rolloutFailureReason: (() { final guardedValue = map['rolloutFailureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rolloutState: (() { final guardedValue = map['rolloutState']; if (guardedValue == null) return null; return GoogleCloudDialogflowCxV3beta1RolloutStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variantsHistory: (() { final guardedValue = map['variantsHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3beta1VariantsHistoryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
