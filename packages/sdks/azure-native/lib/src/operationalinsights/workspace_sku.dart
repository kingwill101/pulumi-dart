// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (tier) of a workspace.
class WorkspaceSku {
  /// The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  final pulumi.Input<int>? capacityReservationLevel;
  /// The name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [WorkspaceSku].
  /// [capacityReservationLevel] The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  /// [name] The name of the SKU.
  WorkspaceSku({
    this.capacityReservationLevel,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationLevel': ?capacityReservationLevel,
      'name': name,
    };
  }

  factory WorkspaceSku.fromMap(Map<String, dynamic> map) {
    return WorkspaceSku(
      capacityReservationLevel: map['capacityReservationLevel'] == null ? null : (map['capacityReservationLevel']! as int).input(),
      name: (map['name'] as String).input(),
    );
  }
}

