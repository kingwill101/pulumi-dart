// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// The definition of the schema.
  /// This should contain a string representing the full definition of the schema
  /// that is a valid schema definition of the type specified in type. Changes
  /// to the definition commit new [schema revisions](https://cloud.google.com/pubsub/docs/commit-schema-revision).
  /// A schema can only have up to 20 revisions, so updates that fail with an
  /// error indicating that the limit has been reached require manually
  /// [deleting old revisions](https://cloud.google.com/pubsub/docs/delete-schema-revision).
  final pulumi.Input<String?>? definition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID to use for the schema, which will become the final component of the schema's resource name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. The revision ID of the schema.
  final pulumi.Input<String?>? revisionId;
  /// The type of the schema definition
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `PROTOCOL_BUFFER`, `AVRO`.
  final pulumi.Input<String?>? type;

  /// Creates a new [SchemaState].
  /// [definition] The definition of the schema.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The ID to use for the schema, which will become the final component of the schema's resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [revisionId] Output only. The revision ID of the schema.
  /// [type] The type of the schema definition
  const SchemaState({
    this.definition,
    this.deletionPolicy,
    this.name,
    this.project,
    this.revisionId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
      'revisionId': ?revisionId,
      'type': ?type,
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
