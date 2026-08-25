// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_record_set_get_record_set_args_doc}
/// Arguments for getRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_get_record_set_get_record_set_args_doc}
class GetRecordSetArgs {
  /// The Name of the zone.
  final pulumi.Input<String> managedZone;
  /// The DNS name for the resource.
  final pulumi.Input<String> name;
  /// The ID of the project for the Google Cloud.
  final pulumi.Input<String?>? project;
  /// The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  final pulumi.Input<String> type;

  /// Creates a new [GetRecordSetArgs].
  /// [managedZone] The Name of the zone.
  /// [name] The DNS name for the resource.
  /// [project] The ID of the project for the Google Cloud.
  /// [type] The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  const GetRecordSetArgs({
    required this.managedZone,
    required this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'type': type,
    };
  }

  factory GetRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordSetArgs(
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
