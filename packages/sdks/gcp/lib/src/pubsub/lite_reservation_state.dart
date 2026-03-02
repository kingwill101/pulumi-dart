// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LiteReservation resources.
class LiteReservationState {
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
  final pulumi.Input<int>? throughputCapacity;

  /// Creates a new [LiteReservationState].
  /// [name] Name of the reservation.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite reservation.
  /// [throughputCapacity] The reserved throughput capacity. Every unit of throughput capacity is
  LiteReservationState({
    this.name,
    this.project,
    this.region,
    this.throughputCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'throughputCapacity': ?throughputCapacity,
    };
  }

  factory LiteReservationState.fromMap(Map<String, dynamic> map) {
    return LiteReservationState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      throughputCapacity: map['throughputCapacity'] == null ? null : (map['throughputCapacity'] as int).input(),
    );
  }
}

