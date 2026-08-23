// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_future_reservation_args_doc}
/// Arguments for getFutureReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_future_reservation_args_doc}
class GetFutureReservationArgs {
  final pulumi.Input<String> futureReservation;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetFutureReservationArgs].
  /// [futureReservation] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetFutureReservationArgs({
    required this.futureReservation,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'futureReservation': futureReservation,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetFutureReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetFutureReservationArgs(
      futureReservation: pulumi.Input.fromValue(map['futureReservation'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
