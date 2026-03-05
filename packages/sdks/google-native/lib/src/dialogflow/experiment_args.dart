// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_state.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_definition.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_config.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_state.dart';
import 'google_cloud_dialogflow_cx_v3_variants_history.dart';

/// {@template pulumi_dialogflow_v3_experiment_args_doc}
/// The set of arguments for Experiment.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_experiment_args_doc}
class ExperimentArgs {
  final pulumi.Input<String> agentId;
  /// Creation time of this experiment.
  final pulumi.Input<String>? createTime;
  /// The definition of the experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3ExperimentDefinition>? definition;
  /// The human-readable description of the experiment.
  final pulumi.Input<String>? description;
  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  final pulumi.Input<String> displayName;
  /// End time of this experiment.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String> environmentId;
  /// Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  final pulumi.Input<String>? experimentLength;
  /// Last update time of this experiment.
  final pulumi.Input<String>? lastUpdateTime;
  final pulumi.Input<String>? location;
  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Inference result of the experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3ExperimentResult>? result;
  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  final pulumi.Input<GoogleCloudDialogflowCxV3RolloutConfig>? rolloutConfig;
  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  final pulumi.Input<String>? rolloutFailureReason;
  /// State of the auto rollout process.
  final pulumi.Input<GoogleCloudDialogflowCxV3RolloutState>? rolloutState;
  /// Start time of this experiment.
  final pulumi.Input<String>? startTime;
  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  final pulumi.Input<ExperimentState>? state;
  /// The history of updates to the experiment variants.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3VariantsHistory>>? variantsHistory;

  /// Creates a new [ExperimentArgs].
  /// [agentId] Required.
  /// [createTime] Creation time of this experiment.
  /// [definition] The definition of the experiment.
  /// [description] The human-readable description of the experiment.
  /// [displayName] The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  /// [endTime] End time of this experiment.
  /// [environmentId] Required.
  /// [experimentLength] Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  /// [lastUpdateTime] Last update time of this experiment.
  /// [location] Optional.
  /// [name] The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  /// [project] Optional.
  /// [result] Inference result of the experiment.
  /// [rolloutConfig] The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  /// [rolloutFailureReason] The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  /// [rolloutState] State of the auto rollout process.
  /// [startTime] Start time of this experiment.
  /// [state] The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  /// [variantsHistory] The history of updates to the experiment variants.
  ExperimentArgs({
    required this.agentId,
    this.createTime,
    this.definition,
    this.description,
    required this.displayName,
    this.endTime,
    required this.environmentId,
    this.experimentLength,
    this.lastUpdateTime,
    this.location,
    this.name,
    this.project,
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
      'agentId': agentId,
      'createTime': ?createTime,
      'definition': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ExperimentDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'endTime': ?endTime,
      'environmentId': environmentId,
      'experimentLength': ?experimentLength,
      'lastUpdateTime': ?lastUpdateTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'result': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3ExperimentResult, Map<String, dynamic>>(result, (value) => value.toMap()),
      'rolloutConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3RolloutConfig, Map<String, dynamic>>(rolloutConfig, (value) => value.toMap()),
      'rolloutFailureReason': ?rolloutFailureReason,
      'rolloutState': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3RolloutState, Map<String, dynamic>>(rolloutState, (value) => value.toMap()),
      'startTime': ?startTime,
      'state': ?pulumi.Input.mapOptionalInputValue<ExperimentState, String>(state, (value) => value.wireValue),
      'variantsHistory': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3VariantsHistory>, List<Map<String, dynamic>>>(variantsHistory, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3VariantsHistory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ExperimentDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      experimentLength: (() { final guardedValue = map['experimentLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3ExperimentResult.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rolloutConfig: (() { final guardedValue = map['rolloutConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3RolloutConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rolloutFailureReason: (() { final guardedValue = map['rolloutFailureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutState: (() { final guardedValue = map['rolloutState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3RolloutState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentState.fromValue(guardedValue as String)); })(),
      variantsHistory: (() { final guardedValue = map['variantsHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VariantsHistory>(guardedValue, (value) => GoogleCloudDialogflowCxV3VariantsHistory.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

