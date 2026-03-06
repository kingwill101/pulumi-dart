// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_lite_reservation_lite_reservation_args_doc}
/// The set of arguments for LiteReservation.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_reservation_lite_reservation_args_doc}
class LiteReservationArgs {
  /// Name of the reservation.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the pubsub lite reservation.
  final pulumi.Input<String>? region;
  /// The reserved throughput capacity. Every unit of throughput capacity is
  /// equivalent to 1 MiB/s of published messages or 2 MiB/s of subscribed
  /// messages.
  final pulumi.Input<int> throughputCapacity;

  /// Creates a new [LiteReservationArgs].
  /// [name] Name of the reservation.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite reservation.
  /// [throughputCapacity] The reserved throughput capacity. Every unit of throughput capacity is
  const LiteReservationArgs({
    this.name,
    this.project,
    this.region,
    required this.throughputCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'throughputCapacity': throughputCapacity,
    };
  }

  factory LiteReservationArgs.fromMap(Map<String, dynamic> map) {
    return LiteReservationArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughputCapacity: pulumi.Input.fromValue(map['throughputCapacity'] as int),
    );
  }
}

