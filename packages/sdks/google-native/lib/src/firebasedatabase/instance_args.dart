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
      'type': ?pulumi.Input.mapOptionalInputValue<InstanceType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      databaseId: (() {
        final guardedValue = map['databaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
