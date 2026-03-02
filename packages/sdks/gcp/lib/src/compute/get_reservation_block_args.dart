// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_reservation_block_get_reservation_block_args_doc}
/// Arguments for getReservationBlock.
/// {@endtemplate}
/// {@macro pulumi_compute_get_reservation_block_get_reservation_block_args_doc}
class GetReservationBlockArgs {
  /// The name of the reservation block.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the parent reservation.
  ///
  /// - - -
  final pulumi.Input<String> reservation;
  /// The zone where the reservation block resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetReservationBlockArgs].
  /// [name] The name of the reservation block.
  /// [project] The project in which the resource belongs. If it
  /// [reservation] The name of the parent reservation.
  /// [zone] The zone where the reservation block resides.
  GetReservationBlockArgs({
    required this.name,
    this.project,
    required this.reservation,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'reservation': reservation,
      'zone': ?zone,
    };
  }

  factory GetReservationBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reservation: (map['reservation'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

