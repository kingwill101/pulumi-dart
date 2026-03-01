// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v2_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_connectors_v2_entity_args_doc}
class EntityArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> entityTypeId;
  /// Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  final pulumi.Input<Map<String, String>>? fields;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [EntityArgs].
  /// [connectionId] Required.
  /// [entityTypeId] Required.
  /// [fields] Fields of the entity. The key is name of the field and the value contains the applicable `google.protobuf.Value` entry for this field.
  /// [location] Optional.
  /// [project] Optional.
  EntityArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> entityTypeId,
    pulumi.Output<Map<String, String>>? fields,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      entityTypeId = pulumi.Input.asInput<String>(entityTypeId),
      fields = pulumi.Input.asOptionalInput<Map<String, String>>(fields),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'entityTypeId': entityTypeId,
      'fields': ?fields,
      'location': ?location,
      'project': ?project,
    };
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      entityTypeId: pulumi.Output.create<String>(map['entityTypeId'] as String),
      fields: map['fields'] == null ? null : pulumi.Output.create<Map<String, String>>((map['fields'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

