// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_reservation_sub_block_get_reservation_sub_block_args_doc}
/// Arguments for getReservationSubBlock.
/// {@endtemplate}
/// {@macro pulumi_compute_get_reservation_sub_block_get_reservation_sub_block_args_doc}
class GetReservationSubBlockArgs {
  /// The name of the reservation sub-block.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The name of the parent reservation.
  ///
  /// - - -
  final pulumi.Input<String> reservation;
  /// The name of the parent reservation block.
  final pulumi.Input<String> reservationBlock;
  /// The zone where the reservation sub-block resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetReservationSubBlockArgs].
  /// [name] The name of the reservation sub-block.
  /// [project] The project in which the resource belongs. If it
  /// [reservation] The name of the parent reservation.
  /// [reservationBlock] The name of the parent reservation block.
  /// [zone] The zone where the reservation sub-block resides.
  GetReservationSubBlockArgs({
    required this.name,
    this.project,
    required this.reservation,
    required this.reservationBlock,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'reservation': reservation,
      'reservationBlock': reservationBlock,
      'zone': ?zone,
    };
  }

  factory GetReservationSubBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reservation: (map['reservation'] as String).input(),
      reservationBlock: (map['reservationBlock'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

