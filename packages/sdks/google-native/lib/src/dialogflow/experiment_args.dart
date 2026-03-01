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
    required pulumi.Output<String> agentId,
    pulumi.Output<String>? createTime,
    pulumi.Output<GoogleCloudDialogflowCxV3ExperimentDefinition>? definition,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? endTime,
    required pulumi.Output<String> environmentId,
    pulumi.Output<String>? experimentLength,
    pulumi.Output<String>? lastUpdateTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDialogflowCxV3ExperimentResult>? result,
    pulumi.Output<GoogleCloudDialogflowCxV3RolloutConfig>? rolloutConfig,
    pulumi.Output<String>? rolloutFailureReason,
    pulumi.Output<GoogleCloudDialogflowCxV3RolloutState>? rolloutState,
    pulumi.Output<String>? startTime,
    pulumi.Output<ExperimentState>? state,
    pulumi.Output<List<GoogleCloudDialogflowCxV3VariantsHistory>>? variantsHistory,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      definition = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3ExperimentDefinition>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      experimentLength = pulumi.Input.asOptionalInput<String>(experimentLength),
      lastUpdateTime = pulumi.Input.asOptionalInput<String>(lastUpdateTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      result = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3ExperimentResult>(result),
      rolloutConfig = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3RolloutConfig>(rolloutConfig),
      rolloutFailureReason = pulumi.Input.asOptionalInput<String>(rolloutFailureReason),
      rolloutState = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3RolloutState>(rolloutState),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      state = pulumi.Input.asOptionalInput<ExperimentState>(state),
      variantsHistory = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3VariantsHistory>>(variantsHistory);

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
      agentId: pulumi.Output.create<String>(map['agentId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      definition: map['definition'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3ExperimentDefinition>(GoogleCloudDialogflowCxV3ExperimentDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      experimentLength: map['experimentLength'] == null ? null : pulumi.Output.create<String>(map['experimentLength'] as String),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdateTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      result: map['result'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3ExperimentResult>(GoogleCloudDialogflowCxV3ExperimentResult.fromMap((map['result'] as Map).cast<String, dynamic>())),
      rolloutConfig: map['rolloutConfig'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3RolloutConfig>(GoogleCloudDialogflowCxV3RolloutConfig.fromMap((map['rolloutConfig'] as Map).cast<String, dynamic>())),
      rolloutFailureReason: map['rolloutFailureReason'] == null ? null : pulumi.Output.create<String>(map['rolloutFailureReason'] as String),
      rolloutState: map['rolloutState'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowCxV3RolloutState>(GoogleCloudDialogflowCxV3RolloutState.fromMap((map['rolloutState'] as Map).cast<String, dynamic>())),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<ExperimentState>(ExperimentState.fromValue(map['state'] as String)),
      variantsHistory: map['variantsHistory'] == null ? null : pulumi.Output.create<List<GoogleCloudDialogflowCxV3VariantsHistory>>(pulumi.Input.decodeList<GoogleCloudDialogflowCxV3VariantsHistory>(map['variantsHistory'], (value) => GoogleCloudDialogflowCxV3VariantsHistory.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

