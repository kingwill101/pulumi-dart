// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy {
  /// The window of time that opportunistic maintenance can run. Example: A setting of 14 days (`"1209600s"`) implies that opportunistic maintenance can only be ran in the 2 weeks leading up to the scheduled maintenance date. Setting 28 days (`"2419200s"`) allows opportunistic maintenance to run at any time in the scheduled maintenance window (all `PERIODIC` maintenance is set 28 days in advance).
  final pulumi.Input<String> maintenanceAvailabilityWindow;
  /// The minimum nodes required to be available in a pool. Blocks maintenance if it would cause the number of running nodes to dip below this value.
  final pulumi.Input<int> minNodesPerPool;
  /// The amount of time that a node can remain idle (no customer owned workloads running), before triggering maintenance. Format is a duration terminated by `s`, e.g. `"600s"`.
  final pulumi.Input<String> nodeIdleTimeWindow;

  /// Creates a new [ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy].
  /// [maintenanceAvailabilityWindow] The window of time that opportunistic maintenance can run. Example: A setting of 14 days (`"1209600s"`) implies that opportunistic maintenance can only be ran in the 2 weeks leading up to the scheduled maintenance date. Setting 28 days (`"2419200s"`) allows opportunistic maintenance to run at any time in the scheduled maintenance window (all `PERIODIC` maintenance is set 28 days in advance).
  /// [minNodesPerPool] The minimum nodes required to be available in a pool. Blocks maintenance if it would cause the number of running nodes to dip below this value.
  /// [nodeIdleTimeWindow] The amount of time that a node can remain idle (no customer owned workloads running), before triggering maintenance. Format is a duration terminated by `s`, e.g. `"600s"`.
  const ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy({
    required this.maintenanceAvailabilityWindow,
    required this.minNodesPerPool,
    required this.nodeIdleTimeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceAvailabilityWindow': maintenanceAvailabilityWindow,
      'minNodesPerPool': minNodesPerPool,
      'nodeIdleTimeWindow': nodeIdleTimeWindow,
    };
  }

  factory ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigHostMaintenancePolicyOpportunisticMaintenanceStrategy(
      maintenanceAvailabilityWindow: pulumi.Input.fromValue(map['maintenanceAvailabilityWindow'] as String),
      minNodesPerPool: pulumi.Input.fromValue((map['minNodesPerPool'] as num).toInt()),
      nodeIdleTimeWindow: pulumi.Input.fromValue(map['nodeIdleTimeWindow'] as String),
    );
  }
}
