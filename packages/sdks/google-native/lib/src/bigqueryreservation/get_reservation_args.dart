// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1_get_reservation_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1_get_reservation_args_doc}
class GetReservationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservationId;

  /// Creates a new [GetReservationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [reservationId] Required.
  GetReservationArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservationId = pulumi.Input.asInput<String>(reservationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'reservationId': reservationId,
    };
  }

  factory GetReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservationId: pulumi.Output.create<String>(map['reservationId'] as String),
    );
  }
}

