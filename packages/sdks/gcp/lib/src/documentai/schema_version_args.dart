// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_schema.dart';

/// {@template pulumi_documentai_schema_version_schema_version_args_doc}
/// The set of arguments for SchemaVersion.
/// {@endtemplate}
/// {@macro pulumi_documentai_schema_version_schema_version_args_doc}
class SchemaVersionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-defined name of the SchemaVersion.
  final pulumi.Input<String> displayName;
  /// The Google Cloud labels for the SchemaVersion.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The schema of the SchemaVersion.
  /// Structure is documented below.
  final pulumi.Input<SchemaVersionSchema> schema;
  /// The schema id that this schema version belongs to.
  final pulumi.Input<String> schemaId;

  /// Creates a new [SchemaVersionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-defined name of the SchemaVersion.
  /// [labels] The Google Cloud labels for the SchemaVersion.
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [schema] The schema of the SchemaVersion.
  /// [schemaId] The schema id that this schema version belongs to.
  const SchemaVersionArgs({
    this.deletionPolicy,
    required this.displayName,
    this.labels,
    required this.location,
    this.project,
    required this.schema,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'schema': pulumi.Input.mapInputValue<SchemaVersionSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'schemaId': schemaId,
    };
  }

  factory SchemaVersionArgs.fromMap(Map<String, dynamic> map) {
    return SchemaVersionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: pulumi.Input.fromValue(SchemaVersionSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
    );
  }
}
