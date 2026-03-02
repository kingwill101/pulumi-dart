// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_reservation_preferred_table.dart';

/// Input properties used for looking up and filtering BiReservation resources.
class BiReservationState {
  /// LOCATION_DESCRIPTION
  final pulumi.Input<String>? location;
  /// The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  final pulumi.Input<String>? name;
  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  final pulumi.Input<List<BiReservationPreferredTable>>? preferredTables;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Size of a reservation, in bytes.
  final pulumi.Input<int>? size;
  /// The last update timestamp of a reservation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BiReservationState].
  /// [location] LOCATION_DESCRIPTION
  /// [name] The resource name of the singleton BI reservation. Reservation names have the form `projects/{projectId}/locations/{locationId}/biReservation`.
  /// [preferredTables] Preferred tables to use BI capacity for.
  /// [project] The ID of the project in which the resource belongs.
  /// [size] Size of a reservation, in bytes.
  /// [updateTime] The last update timestamp of a reservation.
  BiReservationState({
    this.location,
    this.name,
    this.preferredTables,
    this.project,
    this.size,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'preferredTables': ?pulumi.Input.mapOptionalInputValue<List<BiReservationPreferredTable>, List<Map<String, dynamic>>>(preferredTables, (value) => pulumi.Input.encodeList<BiReservationPreferredTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'size': ?size,
      'updateTime': ?updateTime,
    };
  }

  factory BiReservationState.fromMap(Map<String, dynamic> map) {
    return BiReservationState(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      preferredTables: map['preferredTables'] == null ? null : (pulumi.Input.decodeList<BiReservationPreferredTable>(map['preferredTables'], (value) => BiReservationPreferredTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

