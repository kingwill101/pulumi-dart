// ignore_for_file: unused_element, unnecessary_cast


/// The SKU (tier) of a workspace.
class WorkspaceSkuResponse {
  /// The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  final int? capacityReservationLevel;
  /// The last time when the sku was updated.
  final String lastSkuUpdate;
  /// The name of the SKU.
  final String name;

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
      capacityReservationLevel: map['capacityReservationLevel'] == null ? null : map['capacityReservationLevel'] as int,
      lastSkuUpdate: map['lastSkuUpdate'] as String,
      name: map['name'] as String,
    );
  }
}

