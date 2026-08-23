// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_response.dart';
import 'cluster_upgrade_upgrade_status_response.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponse {
  /// Number of GKE clusters in each status code.
  final pulumi.Input<Map<String, String>> stats;
  /// Status of the upgrade.
  final pulumi.Input<ClusterUpgradeUpgradeStatusResponse> status;
  /// Which upgrade to track the state.
  final pulumi.Input<ClusterUpgradeGKEUpgradeResponse> upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeStateResponse].
  /// [stats] Number of GKE clusters in each status code.
  /// [status] Status of the upgrade.
  /// [upgrade] Which upgrade to track the state.
  const ClusterUpgradeGKEUpgradeStateResponse({
    required this.stats,
    required this.status,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stats': stats,
      'status': pulumi.Input.mapInputValue<ClusterUpgradeUpgradeStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<ClusterUpgradeGKEUpgradeResponse, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeGKEUpgradeStateResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponse(
      stats: pulumi.Input.fromValue((map['stats'] as Map).cast<String, String>()),
      status: pulumi.Input.fromValue(ClusterUpgradeUpgradeStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      upgrade: pulumi.Input.fromValue(ClusterUpgradeGKEUpgradeResponse.fromMap((map['upgrade']! as Map).cast<String, dynamic>())),
    );
  }
}
