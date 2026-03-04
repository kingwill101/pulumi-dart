// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicSchemaSetting {
  /// The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
  final pulumi.Input<String> encoding;

  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final pulumi.Input<String> schema;

  /// Creates a new [GetTopicSchemaSetting].
  /// [encoding] The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
  /// [schema] The name of the schema that messages published should be
  GetTopicSchemaSetting({required this.encoding, required this.schema});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'encoding': encoding, 'schema': schema};
  }

  factory GetTopicSchemaSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicSchemaSetting(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
