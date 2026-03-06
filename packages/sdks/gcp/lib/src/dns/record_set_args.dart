// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy.dart';

/// {@template pulumi_dns_record_set_record_set_args_doc}
/// The set of arguments for RecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_record_set_record_set_args_doc}
class RecordSetArgs {
  /// The name of the zone in which this record set will
  /// reside.
  final pulumi.Input<String> managedZone;
  /// The DNS name this record set will apply to.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The configuration for steering traffic based on query.
  /// Now you can specify either Weighted Round Robin(WRR) type or Geolocation(GEO) type.
  /// Structure is documented below.
  final pulumi.Input<RecordSetRoutingPolicy>? routingPolicy;
  final pulumi.Input<List<String>>? rrdatas;
  /// The time-to-live of this record set (seconds).
  final pulumi.Input<int>? ttl;
  /// The DNS record set type.
  ///
  /// - - -
  final pulumi.Input<String> type;

  /// Creates a new [RecordSetArgs].
  /// [managedZone] The name of the zone in which this record set will
  /// [name] The DNS name this record set will apply to.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [routingPolicy] The configuration for steering traffic based on query.
  /// [rrdatas] Optional.
  /// [ttl] The time-to-live of this record set (seconds).
  /// [type] The DNS record set type.
  const RecordSetArgs({
    required this.managedZone,
    required this.name,
    this.project,
    this.routingPolicy,
    this.rrdatas,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'routingPolicy': ?pulumi.Input.mapOptionalInputValue<RecordSetRoutingPolicy, Map<String, dynamic>>(routingPolicy, (value) => value.toMap()),
      'rrdatas': ?rrdatas,
      'ttl': ?ttl,
      'type': type,
    };
  }

  factory RecordSetArgs.fromMap(Map<String, dynamic> map) {
    return RecordSetArgs(
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicy: (() { final guardedValue = map['routingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecordSetRoutingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rrdatas: (() { final guardedValue = map['rrdatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

