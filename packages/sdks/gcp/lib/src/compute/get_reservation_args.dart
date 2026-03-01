// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_reservation_get_reservation_args_doc}
/// Arguments for getReservation.
/// {@endtemplate}
/// {@macro pulumi_compute_get_reservation_get_reservation_args_doc}
class GetReservationArgs {
  /// The name of the Compute Reservation.
  final pulumi.Input<String> name;
  /// Project from which to list the Compute Reservation. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;
  /// Zone where the Compute Reservation resides.
  final pulumi.Input<String> zone;

  /// Creates a new [GetReservationArgs].
  /// [name] The name of the Compute Reservation.
  /// [project] Project from which to list the Compute Reservation. Defaults to project declared in the provider.
  /// [zone] Zone where the Compute Reservation resides.
  GetReservationArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetReservationArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

