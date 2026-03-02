// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_type.dart';

/// {@template pulumi_firebasedatabase_v1beta_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_firebasedatabase_v1beta_instance_args_doc}
class InstanceArgs {
  /// The globally unique identifier of the database instance.
  final pulumi.Input<String>? databaseId;
  final pulumi.Input<String>? location;
  /// The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  final pulumi.Input<InstanceType>? type;

  /// Creates a new [InstanceArgs].
  /// [databaseId] The globally unique identifier of the database instance.
  /// [location] Optional.
  /// [name] The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  /// [project] Optional.
  /// [type] Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
  InstanceArgs({
    this.databaseId,
    this.location,
    this.name,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'type': ?pulumi.Input.mapOptionalInputValue<InstanceType, String>(type, (value) => value.value),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      databaseId: map['databaseId'] == null ? null : (map['databaseId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      type: map['type'] == null ? null : (InstanceType.fromValue(map['type']! as String)).input(),
    );
  }
}

