// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_update_run_managed_cluster_update_node_image_selection.dart';
import 'fleet_update_run_managed_cluster_update_upgrade.dart';

class FleetUpdateRunManagedClusterUpdate {
  /// A `node_image_selection` block as defined below.
  final FleetUpdateRunManagedClusterUpdateNodeImageSelection? nodeImageSelection;
  /// A `upgrade` block as defined below.
  final FleetUpdateRunManagedClusterUpdateUpgrade upgrade;

  /// Creates a new [FleetUpdateRunManagedClusterUpdate].
  /// [nodeImageSelection] A `node_image_selection` block as defined below.
  /// [upgrade] A `upgrade` block as defined below.
  FleetUpdateRunManagedClusterUpdate({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': ?nodeImageSelection == null ? null : nodeImageSelection!.toMap(),
      'upgrade': upgrade.toMap(),
    };
  }

  factory FleetUpdateRunManagedClusterUpdate.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunManagedClusterUpdate(
      nodeImageSelection: map['nodeImageSelection'] == null ? null : FleetUpdateRunManagedClusterUpdateNodeImageSelection.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>()),
      upgrade: FleetUpdateRunManagedClusterUpdateUpgrade.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

