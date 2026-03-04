// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Capacity Reservation properties.
class CapacityReservationPropertiesResponse {
  /// The last time Sku was updated.
  final pulumi.Input<String> lastSkuUpdate;

  /// Minimum CapacityReservation value in Gigabytes.
  final pulumi.Input<double> minCapacity;

  /// Creates a new [CapacityReservationPropertiesResponse].
  /// [lastSkuUpdate] The last time Sku was updated.
  /// [minCapacity] Minimum CapacityReservation value in Gigabytes.
  CapacityReservationPropertiesResponse({
    required this.lastSkuUpdate,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSkuUpdate': lastSkuUpdate,
      'minCapacity': minCapacity,
    };
  }

  factory CapacityReservationPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityReservationPropertiesResponse(
      lastSkuUpdate: pulumi.Input.fromValue(map['lastSkuUpdate'] as String),
      minCapacity: pulumi.Input.fromValue(map['minCapacity'] as double),
    );
  }
}
