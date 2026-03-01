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
    pulumi.Output<String>? databaseId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<InstanceType>? type,
  }) :
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asOptionalInput<InstanceType>(type);

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
      databaseId: map['databaseId'] == null ? null : pulumi.Output.create<String>(map['databaseId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<InstanceType>(InstanceType.fromValue(map['type'] as String)),
    );
  }
}

