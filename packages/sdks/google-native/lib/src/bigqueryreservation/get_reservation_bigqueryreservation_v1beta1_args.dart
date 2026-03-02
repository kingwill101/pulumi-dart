// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigqueryreservation_v1beta1_get_reservation_bigqueryreservation_v1beta1_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_bigqueryreservation_v1beta1_get_reservation_bigqueryreservation_v1beta1_args_doc}
class GetReservationBigqueryreservationV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reservationId;

  /// Creates a new [GetReservationBigqueryreservationV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [reservationId] Required.
  GetReservationBigqueryreservationV1beta1Args({
    required this.location,
    this.project,
    required this.reservationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'reservationId': reservationId,
    };
  }

  factory GetReservationBigqueryreservationV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetReservationBigqueryreservationV1beta1Args(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reservationId: (map['reservationId'] as String).input(),
    );
  }
}

