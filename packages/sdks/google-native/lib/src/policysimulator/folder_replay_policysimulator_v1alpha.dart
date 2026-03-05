import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_replay_policysimulator_v1alpha_args.dart';
import 'google_cloud_policysimulator_v1alpha_replay_config_response.dart';
import 'google_cloud_policysimulator_v1alpha_replay_results_summary_response.dart';

/// Creates and starts a Replay using the given ReplayConfig.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class FolderReplayPolicysimulatorV1alpha extends pulumi.CustomResource {
  /// The configuration used for the `Replay`.
  late final pulumi.Output<
    GoogleCloudPolicysimulatorV1alphaReplayConfigResponse
  >
  config;
  late final pulumi.Output<String> folderId;
  late final pulumi.Output<String> location;

  /// The resource name of the `Replay`, which has the following format: `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`, where `{resource-id}` is the ID of the project, folder, or organization that owns the Replay. Example: `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
  late final pulumi.Output<String> name;

  /// Summary statistics about the replayed log entries.
  late final pulumi.Output<
    GoogleCloudPolicysimulatorV1alphaReplayResultsSummaryResponse
  >
  resultsSummary;

  /// The current state of the `Replay`.
  late final pulumi.Output<String> state;

  /// Creates a new [FolderReplayPolicysimulatorV1alpha].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderReplayPolicysimulatorV1alpha]. {@macro pulumi_policysimulator_v1alpha_folder_replay_policysimulator_v1alpha_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderReplayPolicysimulatorV1alpha(
    String name, {
    FolderReplayPolicysimulatorV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:policysimulator/v1alpha:FolderReplay',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    config =
        registerOutput<GoogleCloudPolicysimulatorV1alphaReplayConfigResponse>(
          'config',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudPolicysimulatorV1alphaReplayConfigResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    folderId = registerOutput<String>('folderId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resultsSummary =
        registerOutput<
          GoogleCloudPolicysimulatorV1alphaReplayResultsSummaryResponse
        >(
          'resultsSummary',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudPolicysimulatorV1alphaReplayResultsSummaryResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    state = registerOutput<String>('state');
  }
}
