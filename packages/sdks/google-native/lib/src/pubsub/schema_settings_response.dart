// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for validating messages published against a schema.
class SchemaSettingsResponse {
  /// Optional. The encoding of messages validated against `schema`.
  final pulumi.Input<String> encoding;
  /// Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  final pulumi.Input<String> firstRevisionId;
  /// Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  final pulumi.Input<String> lastRevisionId;
  /// The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  final pulumi.Input<String> schema;

  /// Creates a new [SchemaSettingsResponse].
  /// [encoding] Optional. The encoding of messages validated against `schema`.
  /// [firstRevisionId] Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  /// [lastRevisionId] Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  /// [schema] The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  const SchemaSettingsResponse({
    required this.encoding,
    required this.firstRevisionId,
    required this.lastRevisionId,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': encoding,
      'firstRevisionId': firstRevisionId,
      'lastRevisionId': lastRevisionId,
      'schema': schema,
    };
  }

  factory SchemaSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SchemaSettingsResponse(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      firstRevisionId: pulumi.Input.fromValue(map['firstRevisionId'] as String),
      lastRevisionId: pulumi.Input.fromValue(map['lastRevisionId'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}

