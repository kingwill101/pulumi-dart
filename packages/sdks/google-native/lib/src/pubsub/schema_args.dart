// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_type.dart';

/// {@template pulumi_pubsub_v1_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_schema_args_doc}
class SchemaArgs {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final pulumi.Input<String>? definition;
  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  final pulumi.Input<String>? schemaId;
  /// The type of the schema definition.
  final pulumi.Input<SchemaType>? type;

  /// Creates a new [SchemaArgs].
  /// [definition] The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  /// [name] Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  /// [project] Optional.
  /// [schemaId] The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for resource name constraints.
  /// [type] The type of the schema definition.
  SchemaArgs({
    this.definition,
    this.name,
    this.project,
    this.schemaId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'name': ?name,
      'project': ?project,
      'schemaId': ?schemaId,
      'type': ?pulumi.Input.mapOptionalInputValue<SchemaType, String>(type, (value) => value.wireValue),
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaType.fromValue(guardedValue as String)); })(),
    );
  }
}

