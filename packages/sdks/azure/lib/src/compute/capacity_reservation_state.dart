// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_sku.dart';

/// Input properties used for looking up and filtering CapacityReservation resources.
class CapacityReservationState {
  /// The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `sku` block as defined below.
  final pulumi.Input<CapacityReservationSku>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [CapacityReservationState].
  /// [capacityReservationGroupId] The ID of the Capacity Reservation Group where the Capacity Reservation exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Capacity Reservation. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Specifies the Availability Zone for this Capacity Reservation. Changing this forces a new resource to be created.
  CapacityReservationState({
    this.capacityReservationGroupId,
    this.name,
    this.sku,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'name': ?name,
      'sku': ?pulumi.Input.mapOptionalInputValue<CapacityReservationSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory CapacityReservationState.fromMap(Map<String, dynamic> map) {
    return CapacityReservationState(
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : (map['capacityReservationGroupId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sku: map['sku'] == null ? null : (CapacityReservationSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

