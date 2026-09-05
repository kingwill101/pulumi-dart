// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_capacity_reservation_group_capacity_reservation_group_args_doc}
/// The set of arguments for CapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_group_capacity_reservation_group_args_doc}
class CapacityReservationGroupArgs {
  /// The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [CapacityReservationGroupArgs].
  /// [location] The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  const CapacityReservationGroupArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CapacityReservationGroupArgs.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
