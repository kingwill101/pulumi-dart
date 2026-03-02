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
  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
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
  /// [state] The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
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
      'state': ?pulumi.Input.mapOptionalInputValue<ExperimentState, String>(state, (value) => value.value),
      'variantsHistory': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3VariantsHistory>, List<Map<String, dynamic>>>(variantsHistory, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3VariantsHistory, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentArgs.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs(
      agentId: (map['agentId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      definition: map['definition'] == null ? null : (GoogleCloudDialogflowCxV3ExperimentDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      experimentLength: map['experimentLength'] == null ? null : (map['experimentLength']! as String).input(),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      result: map['result'] == null ? null : (GoogleCloudDialogflowCxV3ExperimentResult.fromMap((map['result']! as Map).cast<String, dynamic>())).input(),
      rolloutConfig: map['rolloutConfig'] == null ? null : (GoogleCloudDialogflowCxV3RolloutConfig.fromMap((map['rolloutConfig']! as Map).cast<String, dynamic>())).input(),
      rolloutFailureReason: map['rolloutFailureReason'] == null ? null : (map['rolloutFailureReason']! as String).input(),
      rolloutState: map['rolloutState'] == null ? null : (GoogleCloudDialogflowCxV3RolloutState.fromMap((map['rolloutState']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (ExperimentState.fromValue(map['state']! as String)).input(),
      variantsHistory: map['variantsHistory'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VariantsHistory>(map['variantsHistory']!, (value) => GoogleCloudDialogflowCxV3VariantsHistory.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

