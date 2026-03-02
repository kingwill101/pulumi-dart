// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (tier) of a workspace.
class WorkspaceSkuResponse {
  /// The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  final pulumi.Input<int>? capacityReservationLevel;
  /// The last time when the sku was updated.
  final pulumi.Input<String> lastSkuUpdate;
  /// The name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [WorkspaceSkuResponse].
  /// [capacityReservationLevel] The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  /// [lastSkuUpdate] The last time when the sku was updated.
  /// [name] The name of the SKU.
  WorkspaceSkuResponse({
    this.capacityReservationLevel,
    required this.lastSkuUpdate,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationLevel': ?capacityReservationLevel,
      'lastSkuUpdate': lastSkuUpdate,
      'name': name,
    };
  }

  factory WorkspaceSkuResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceSkuResponse(
      capacityReservationLevel: map['capacityReservationLevel'] == null ? null : (map['capacityReservationLevel'] as int).input(),
      lastSkuUpdate: (map['lastSkuUpdate'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

