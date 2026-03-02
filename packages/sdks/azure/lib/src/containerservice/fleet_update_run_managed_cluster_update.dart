// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_update_run_managed_cluster_update_node_image_selection.dart';
import 'fleet_update_run_managed_cluster_update_upgrade.dart';

class FleetUpdateRunManagedClusterUpdate {
  /// A `node_image_selection` block as defined below.
  final pulumi.Input<FleetUpdateRunManagedClusterUpdateNodeImageSelection>? nodeImageSelection;
  /// A `upgrade` block as defined below.
  final pulumi.Input<FleetUpdateRunManagedClusterUpdateUpgrade> upgrade;

  /// Creates a new [FleetUpdateRunManagedClusterUpdate].
  /// [nodeImageSelection] A `node_image_selection` block as defined below.
  /// [upgrade] A `upgrade` block as defined below.
  FleetUpdateRunManagedClusterUpdate({
    this.nodeImageSelection,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeImageSelection': ?pulumi.Input.mapOptionalInputValue<FleetUpdateRunManagedClusterUpdateNodeImageSelection, Map<String, dynamic>>(nodeImageSelection, (value) => value.toMap()),
      'upgrade': pulumi.Input.mapInputValue<FleetUpdateRunManagedClusterUpdateUpgrade, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory FleetUpdateRunManagedClusterUpdate.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunManagedClusterUpdate(
      nodeImageSelection: map['nodeImageSelection'] == null ? null : (FleetUpdateRunManagedClusterUpdateNodeImageSelection.fromMap((map['nodeImageSelection'] as Map).cast<String, dynamic>())).input(),
      upgrade: (FleetUpdateRunManagedClusterUpdateUpgrade.fromMap((map['upgrade'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

