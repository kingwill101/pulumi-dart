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
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservation,
    required pulumi.Output<String> reservationBlock,
    pulumi.Output<String>? zone,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservation = pulumi.Input.asInput<String>(reservation),
      reservationBlock = pulumi.Input.asInput<String>(reservationBlock),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservation: pulumi.Output.create<String>(map['reservation'] as String),
      reservationBlock: pulumi.Output.create<String>(map['reservationBlock'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

