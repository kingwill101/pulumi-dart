// ignore_for_file: unused_element, unnecessary_cast

import 'schema_settings_encoding.dart';

/// Settings for validating messages published against a schema.
class SchemaSettings {
  /// Optional. The encoding of messages validated against `schema`.
  final SchemaSettingsEncoding? encoding;
  /// Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  final String? firstRevisionId;
  /// Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  final String? lastRevisionId;
  /// The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  final String schema;

  /// Creates a new [SchemaSettings].
  /// [encoding] Optional. The encoding of messages validated against `schema`.
  /// [firstRevisionId] Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  /// [lastRevisionId] Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  /// [schema] The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  SchemaSettings({
    this.encoding,
    this.firstRevisionId,
    this.lastRevisionId,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding == null ? null : encoding!.value,
      'firstRevisionId': ?firstRevisionId,
      'lastRevisionId': ?lastRevisionId,
      'schema': schema,
    };
  }

  factory SchemaSettings.fromMap(Map<String, dynamic> map) {
    return SchemaSettings(
      encoding: map['encoding'] == null ? null : SchemaSettingsEncoding.fromValue(map['encoding'] as String),
      firstRevisionId: map['firstRevisionId'] == null ? null : map['firstRevisionId'] as String,
      lastRevisionId: map['lastRevisionId'] == null ? null : map['lastRevisionId'] as String,
      schema: map['schema'] as String,
    );
  }
}

