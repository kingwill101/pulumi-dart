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
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservation: pulumi.Input.fromValue(map['reservation'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

