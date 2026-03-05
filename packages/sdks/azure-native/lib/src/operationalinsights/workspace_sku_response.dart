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
      capacityReservationLevel: (() { final guardedValue = map['capacityReservationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lastSkuUpdate: pulumi.Input.fromValue(map['lastSkuUpdate'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

