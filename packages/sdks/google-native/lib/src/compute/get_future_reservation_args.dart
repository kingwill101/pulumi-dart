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
  GetFutureReservationArgs({
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
      futureReservation: (map['futureReservation'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

