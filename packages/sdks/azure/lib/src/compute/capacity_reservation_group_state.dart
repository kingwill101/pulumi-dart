// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CapacityReservationGroup resources.
class CapacityReservationGroupState {
  /// The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CapacityReservationGroupState].
  /// [location] The Azure location where the Capacity Reservation Group exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Capacity Reservation Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the resource group the Capacity Reservation Group is located in. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zones] Specifies a list of Availability Zones for this Capacity Reservation Group. Changing this forces a new resource to be created.
  CapacityReservationGroupState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory CapacityReservationGroupState.fromMap(Map<String, dynamic> map) {
    return CapacityReservationGroupState(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

