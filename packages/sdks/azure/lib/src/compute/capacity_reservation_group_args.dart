// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_capacity_reservation_group_capacity_reservation_group_args_doc}
/// The set of arguments for CapacityReservationGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_capacity_reservation_group_capacity_reservation_group_args_doc}
class CapacityReservationGroupArgs {
  /// The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CapacityReservationGroupArgs].
  /// [location] The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  CapacityReservationGroupArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

