// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_record_sets_get_record_sets_args_doc}
/// Arguments for getRecordSets.
/// {@endtemplate}
/// {@macro pulumi_dns_get_record_sets_get_record_sets_args_doc}
class GetRecordSetsArgs {
  /// The name of the managed zone to fetch the record sets from.
  final pulumi.Input<String> managedZone;
  /// The name of the record set to filter by.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The type of the record set to filter by.
  final pulumi.Input<String?>? type;

  /// Creates a new [GetRecordSetsArgs].
  /// [managedZone] The name of the managed zone to fetch the record sets from.
  /// [name] The name of the record set to filter by.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [type] The type of the record set to filter by.
  const GetRecordSetsArgs({
    required this.managedZone,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'name': ?name,
      'project': ?project,
      'type': ?type,
    };
  }

  factory GetRecordSetsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordSetsArgs(
      managedZone: pulumi.Input.fromValue(map['managedZone'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
