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
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservation,
    pulumi.Output<String>? zone,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservation = pulumi.Input.asInput<String>(reservation),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservation: pulumi.Output.create<String>(map['reservation'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

