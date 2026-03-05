// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicSchemaSettings {
  /// The encoding of messages validated against schema.
  /// Default value is `ENCODING_UNSPECIFIED`.
  /// Possible values are: `ENCODING_UNSPECIFIED`, `JSON`, `BINARY`.
  final pulumi.Input<String>? encoding;
  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final pulumi.Input<String> schema;

  /// Creates a new [TopicSchemaSettings].
  /// [encoding] The encoding of messages validated against schema.
  /// [schema] The name of the schema that messages published should be
  TopicSchemaSettings({
    this.encoding,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'schema': schema,
    };
  }

  factory TopicSchemaSettings.fromMap(Map<String, dynamic> map) {
    return TopicSchemaSettings(
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}

