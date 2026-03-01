// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsublite_v1_reservation_args_doc}
/// The set of arguments for Reservation.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_reservation_args_doc}
class ReservationArgs {
  final pulumi.Input<String>? location;
  /// The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  final pulumi.Input<String> reservationId;
  /// The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  final pulumi.Input<String>? throughputCapacity;

  /// Creates a new [ReservationArgs].
  /// [location] Optional.
  /// [name] The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservation_id}
  /// [project] Optional.
  /// [reservationId] Required. The ID to use for the reservation, which will become the final component of the reservation's name. This value is structured like: `my-reservation-name`.
  /// [throughputCapacity] The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed messages. Any topics which are declared as using capacity from a Reservation will consume resources from this reservation instead of being charged individually.
  ReservationArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reservationId,
    pulumi.Output<String>? throughputCapacity,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservationId = pulumi.Input.asInput<String>(reservationId),
      throughputCapacity = pulumi.Input.asOptionalInput<String>(throughputCapacity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'reservationId': reservationId,
      'throughputCapacity': ?throughputCapacity,
    };
  }

  factory ReservationArgs.fromMap(Map<String, dynamic> map) {
    return ReservationArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservationId: pulumi.Output.create<String>(map['reservationId'] as String),
      throughputCapacity: map['throughputCapacity'] == null ? null : pulumi.Output.create<String>(map['throughputCapacity'] as String),
    );
  }
}

