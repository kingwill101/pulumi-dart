// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bi_reservation_preferred_table.dart';

/// {@template pulumi_bigquery_bi_reservation_bi_reservation_args_doc}
/// The set of arguments for BiReservation.
/// {@endtemplate}
/// {@macro pulumi_bigquery_bi_reservation_bi_reservation_args_doc}
class BiReservationArgs {
  /// LOCATION_DESCRIPTION
  final pulumi.Input<String> location;
  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  final pulumi.Input<List<BiReservationPreferredTable>>? preferredTables;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Size of a reservation, in bytes.
  final pulumi.Input<int>? size;

  /// Creates a new [BiReservationArgs].
  /// [location] LOCATION_DESCRIPTION
  /// [preferredTables] Preferred tables to use BI capacity for.
  /// [project] The ID of the project in which the resource belongs.
  /// [size] Size of a reservation, in bytes.
  BiReservationArgs({
    required this.location,
    this.preferredTables,
    this.project,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'preferredTables': ?pulumi.Input.mapOptionalInputValue<List<BiReservationPreferredTable>, List<Map<String, dynamic>>>(preferredTables, (value) => pulumi.Input.encodeList<BiReservationPreferredTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'size': ?size,
    };
  }

  factory BiReservationArgs.fromMap(Map<String, dynamic> map) {
    return BiReservationArgs(
      location: (map['location'] as String).input(),
      preferredTables: map['preferredTables'] == null ? null : (pulumi.Input.decodeList<BiReservationPreferredTable>(map['preferredTables'], (value) => BiReservationPreferredTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

