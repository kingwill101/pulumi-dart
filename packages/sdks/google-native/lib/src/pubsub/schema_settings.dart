// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_settings_encoding.dart';

/// Settings for validating messages published against a schema.
class SchemaSettings {
  /// Optional. The encoding of messages validated against `schema`.
  final pulumi.Input<SchemaSettingsEncoding>? encoding;

  /// Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against last_revision or any revision created before.
  final pulumi.Input<String>? firstRevisionId;

  /// Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against first_revision or any revision created after.
  final pulumi.Input<String>? lastRevisionId;

  /// The name of the schema that messages published should be validated against. Format is `projects/{project}/schemas/{schema}`. The value of this field will be `_deleted-schema_` if the schema has been deleted.
  final pulumi.Input<String> schema;

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
      'encoding':
          ?pulumi.Input.mapOptionalInputValue<SchemaSettingsEncoding, String>(
            encoding,
            (value) => value.wireValue,
          ),
      'firstRevisionId': ?firstRevisionId,
      'lastRevisionId': ?lastRevisionId,
      'schema': schema,
    };
  }

  factory SchemaSettings.fromMap(Map<String, dynamic> map) {
    return SchemaSettings(
      encoding: (() {
        final guardedValue = map['encoding'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchemaSettingsEncoding.fromValue(guardedValue as String),
        );
      })(),
      firstRevisionId: (() {
        final guardedValue = map['firstRevisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastRevisionId: (() {
        final guardedValue = map['lastRevisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
