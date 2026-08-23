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
  const GetReservationComputeV1Args({
    this.project,
    required this.reservation,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'reservation': reservation,
      'zone': zone,
    };
  }

  factory GetReservationComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetReservationComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservation: pulumi.Input.fromValue(map['reservation'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
