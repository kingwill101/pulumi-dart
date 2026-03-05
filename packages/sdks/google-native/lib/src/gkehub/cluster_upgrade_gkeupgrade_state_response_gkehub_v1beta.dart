// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_response_gkehub_v1beta.dart';
import 'cluster_upgrade_upgrade_status_response_gkehub_v1beta.dart';

/// GKEUpgradeState is a GKEUpgrade and its state at the scope and fleet level.
class ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta {
  /// Number of GKE clusters in each status code.
  final pulumi.Input<Map<String, String>> stats;
  /// Status of the upgrade.
  final pulumi.Input<ClusterUpgradeUpgradeStatusResponseGkehubV1beta> status;
  /// Which upgrade to track the state.
  final pulumi.Input<ClusterUpgradeGKEUpgradeResponseGkehubV1beta> upgrade;

  /// Creates a new [ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta].
  /// [stats] Number of GKE clusters in each status code.
  /// [status] Status of the upgrade.
  /// [upgrade] Which upgrade to track the state.
  ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta({
    required this.stats,
    required this.status,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stats': stats,
      'status': pulumi.Input.mapInputValue<ClusterUpgradeUpgradeStatusResponseGkehubV1beta, Map<String, dynamic>>(status, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<ClusterUpgradeGKEUpgradeResponseGkehubV1beta, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeStateResponseGkehubV1beta(
      stats: pulumi.Input.fromValue((map['stats'] as Map).cast<String, String>()),
      status: pulumi.Input.fromValue(ClusterUpgradeUpgradeStatusResponseGkehubV1beta.fromMap((map['status']! as Map).cast<String, dynamic>())),
      upgrade: pulumi.Input.fromValue(ClusterUpgradeGKEUpgradeResponseGkehubV1beta.fromMap((map['upgrade']! as Map).cast<String, dynamic>())),
    );
  }
}

