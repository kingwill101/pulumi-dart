import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_dialogflow_v3beta1_args.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_definition_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_config_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_state_response.dart';

/// Creates an Experiment in the specified Environment.
class ExperimentDialogflowV3beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> agentId;

  /// Creation time of this experiment.
  late final pulumi.Output<String> createTime;

  /// The definition of the experiment.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse
  >
  definition;

  /// The human-readable description of the experiment.
  late final pulumi.Output<String> description;

  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  late final pulumi.Output<String> displayName;

  /// End time of this experiment.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> environmentId;

  /// Maximum number of days to run the experiment. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  late final pulumi.Output<String> experimentLength;

  /// Last update time of this experiment.
  late final pulumi.Output<String> lastUpdateTime;
  late final pulumi.Output<String> location;

  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Inference result of the experiment.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1ExperimentResultResponse
  >
  result;

  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1RolloutConfigResponse>
  rolloutConfig;

  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  late final pulumi.Output<String> rolloutFailureReason;

  /// State of the auto rollout process.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1RolloutStateResponse>
  rolloutState;

  /// Start time of this experiment.
  late final pulumi.Output<String> startTime;

  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT-&gt;RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT-&gt;DONE or RUNNING-&gt;DONE.
  late final pulumi.Output<String> state;

  /// The history of updates to the experiment variants.
  late final pulumi.Output<List<Map<String, dynamic>>> variantsHistory;

  /// Creates a new [ExperimentDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExperimentDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_experiment_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExperimentDialogflowV3beta1(
    String name, {
    ExperimentDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3beta1:Experiment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentId = registerOutput<String>('agentId');
    createTime = registerOutput<String>('createTime');
    definition =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse
        >(
          'definition',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1ExperimentDefinitionResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    endTime = registerOutput<String>('endTime');
    environmentId = registerOutput<String>('environmentId');
    experimentLength = registerOutput<String>('experimentLength');
    lastUpdateTime = registerOutput<String>('lastUpdateTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    result =
        registerOutput<GoogleCloudDialogflowCxV3beta1ExperimentResultResponse>(
          'result',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1ExperimentResultResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    rolloutConfig =
        registerOutput<GoogleCloudDialogflowCxV3beta1RolloutConfigResponse>(
          'rolloutConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1RolloutConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    rolloutFailureReason = registerOutput<String>('rolloutFailureReason');
    rolloutState =
        registerOutput<GoogleCloudDialogflowCxV3beta1RolloutStateResponse>(
          'rolloutState',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudDialogflowCxV3beta1RolloutStateResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    variantsHistory = registerOutput<List<Map<String, dynamic>>>(
      'variantsHistory',
    );
  }
}
