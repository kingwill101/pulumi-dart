// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_reservation_compute_v1_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_reservation_compute_v1_args_doc}
class GetReservationComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservation;
  final pulumi.Input<String> zone;

  /// Creates a new [GetReservationComputeV1Args].
  /// [project] Optional.
  /// [reservation] Required.
  /// [zone] Required.
  GetReservationComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservation,
    required pulumi.Output<String> zone,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      reservation = pulumi.Input.asInput<String>(reservation),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'reservation': reservation,
      'zone': zone,
    };
  }

  factory GetReservationComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetReservationComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservation: pulumi.Output.create<String>(map['reservation'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

