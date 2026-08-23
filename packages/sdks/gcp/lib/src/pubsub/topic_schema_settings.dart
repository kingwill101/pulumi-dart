// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicSchemaSettings {
  /// The encoding of messages validated against schema.
  /// Default value is `ENCODING_UNSPECIFIED`.
  /// Possible values are: `ENCODING_UNSPECIFIED`, `JSON`, `BINARY`.
  final pulumi.Input<String>? encoding;
  /// The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against lastRevision or any revision created before.
  final pulumi.Input<String>? firstRevisionId;
  /// The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against firstRevision or any revision created after.
  final pulumi.Input<String>? lastRevisionId;
  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final pulumi.Input<String> schema;

  /// Creates a new [TopicSchemaSettings].
  /// [encoding] The encoding of messages validated against schema.
  /// [firstRevisionId] The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against lastRevision or any revision created before.
  /// [lastRevisionId] The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against firstRevision or any revision created after.
  /// [schema] The name of the schema that messages published should be
  const TopicSchemaSettings({
    this.encoding,
    this.firstRevisionId,
    this.lastRevisionId,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'firstRevisionId': ?firstRevisionId,
      'lastRevisionId': ?lastRevisionId,
      'schema': schema,
    };
  }

  factory TopicSchemaSettings.fromMap(Map<String, dynamic> map) {
    return TopicSchemaSettings(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstRevisionId: (() { final guardedValue = map['firstRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRevisionId: (() { final guardedValue = map['lastRevisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
