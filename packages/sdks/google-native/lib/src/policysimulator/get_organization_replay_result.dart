// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_policysimulator_v1_replay_config_response.dart';
import 'google_cloud_policysimulator_v1_replay_results_summary_response.dart';

/// Result data returned by getOrganizationReplay.
class GetOrganizationReplayResult {
  /// The configuration used for the `Replay`.
  final GoogleCloudPolicysimulatorV1ReplayConfigResponse config;
  /// The resource name of the `Replay`, which has the following format: `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`, where `{resource-id}` is the ID of the project, folder, or organization that owns the Replay. Example: `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
  final String name;
  /// Summary statistics about the replayed log entries.
  final GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse resultsSummary;
  /// The current state of the `Replay`.
  final String state;

  /// Creates a new [GetOrganizationReplayResult].
  /// [config] The configuration used for the `Replay`.
  /// [name] The resource name of the `Replay`, which has the following format: `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`, where `{resource-id}` is the ID of the project, folder, or organization that owns the Replay. Example: `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
  /// [resultsSummary] Summary statistics about the replayed log entries.
  /// [state] The current state of the `Replay`.
  const GetOrganizationReplayResult({
    required this.config,
    required this.name,
    required this.resultsSummary,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config.toMap(),
      'name': name,
      'resultsSummary': resultsSummary.toMap(),
      'state': state,
    };
  }

  factory GetOrganizationReplayResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationReplayResult(
      config: GoogleCloudPolicysimulatorV1ReplayConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resultsSummary: GoogleCloudPolicysimulatorV1ReplayResultsSummaryResponse.fromMap((map['resultsSummary']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

