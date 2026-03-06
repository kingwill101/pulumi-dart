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
  const EntityArgs({
    required this.connectionId,
    required this.entityTypeId,
    this.fields,
    this.location,
    this.project,
  });

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
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      entityTypeId: pulumi.Input.fromValue(map['entityTypeId'] as String),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

