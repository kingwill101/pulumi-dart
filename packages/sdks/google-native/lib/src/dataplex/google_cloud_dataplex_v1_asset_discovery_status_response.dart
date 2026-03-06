// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_discovery_status_stats_response.dart';

/// Status of discovery for an asset.
class GoogleCloudDataplexV1AssetDiscoveryStatusResponse {
  /// The duration of the last discovery run.
  final pulumi.Input<String> lastRunDuration;
  /// The start time of the last discovery run.
  final pulumi.Input<String> lastRunTime;
  /// Additional information about the current state.
  final pulumi.Input<String> message;
  /// The current status of the discovery feature.
  final pulumi.Input<String> state;
  /// Data Stats of the asset reported by discovery.
  final pulumi.Input<GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse> stats;
  /// Last update time of the status.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoveryStatusResponse].
  /// [lastRunDuration] The duration of the last discovery run.
  /// [lastRunTime] The start time of the last discovery run.
  /// [message] Additional information about the current state.
  /// [state] The current status of the discovery feature.
  /// [stats] Data Stats of the asset reported by discovery.
  /// [updateTime] Last update time of the status.
  const GoogleCloudDataplexV1AssetDiscoveryStatusResponse({
    required this.lastRunDuration,
    required this.lastRunTime,
    required this.message,
    required this.state,
    required this.stats,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunDuration': lastRunDuration,
      'lastRunTime': lastRunTime,
      'message': message,
      'state': state,
      'stats': pulumi.Input.mapInputValue<GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoveryStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoveryStatusResponse(
      lastRunDuration: pulumi.Input.fromValue(map['lastRunDuration'] as String),
      lastRunTime: pulumi.Input.fromValue(map['lastRunTime'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      stats: pulumi.Input.fromValue(GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse.fromMap((map['stats']! as Map).cast<String, dynamic>())),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

