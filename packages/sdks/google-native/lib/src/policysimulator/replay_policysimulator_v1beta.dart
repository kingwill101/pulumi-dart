import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_policysimulator_v1beta_replay_config_response.dart';
import 'google_cloud_policysimulator_v1beta_replay_results_summary_response.dart';
import 'replay_policysimulator_v1beta_args.dart';

/// Creates and starts a Replay using the given ReplayConfig.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ReplayPolicysimulatorV1beta extends pulumi.CustomResource {
  /// The configuration used for the `Replay`.
  late final pulumi.Output<GoogleCloudPolicysimulatorV1betaReplayConfigResponse> config;
  late final pulumi.Output<String> location;
  /// The resource name of the `Replay`, which has the following format: `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`, where `{resource-id}` is the ID of the project, folder, or organization that owns the Replay. Example: `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Summary statistics about the replayed log entries.
  late final pulumi.Output<GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse> resultsSummary;
  /// The current state of the `Replay`.
  late final pulumi.Output<String> state;

  /// Creates a new [ReplayPolicysimulatorV1beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplayPolicysimulatorV1beta]. {@macro pulumi_policysimulator_v1beta_replay_policysimulator_v1beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplayPolicysimulatorV1beta(
    String name, {
    ReplayPolicysimulatorV1betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:policysimulator/v1beta:Replay',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    config = registerOutput<GoogleCloudPolicysimulatorV1betaReplayConfigResponse>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudPolicysimulatorV1betaReplayConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resultsSummary = registerOutput<GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse>('resultsSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudPolicysimulatorV1betaReplayResultsSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }
}
