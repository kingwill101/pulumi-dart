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
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<int>? throughputCapacity,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      throughputCapacity = pulumi.Input.asOptionalInput<int>(throughputCapacity);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      throughputCapacity: map['throughputCapacity'] == null ? null : pulumi.Output.create<int>(map['throughputCapacity'] as int),
    );
  }
}

