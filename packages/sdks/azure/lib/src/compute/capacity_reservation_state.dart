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
    pulumi.Output<String>? capacityReservationGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<CapacityReservationSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sku = pulumi.Input.asOptionalInput<CapacityReservationSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<CapacityReservationSku>(CapacityReservationSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

