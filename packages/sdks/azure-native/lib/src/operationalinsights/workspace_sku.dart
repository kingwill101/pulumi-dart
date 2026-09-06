// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU (tier) of a workspace.
class WorkspaceSku {
  /// The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  final pulumi.Input<int?>? capacityReservationLevel;
  /// The name of the SKU.
  final pulumi.Input<dynamic> name;

  /// Creates a new [WorkspaceSku].
  /// [capacityReservationLevel] The capacity reservation level in GB for this workspace, when CapacityReservation sku is selected.
  /// [name] The name of the SKU.
  const WorkspaceSku({
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
      capacityReservationLevel: (() { final guardedValue = map['capacityReservationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
