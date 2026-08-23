// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicSchemaSetting {
  /// The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
  final pulumi.Input<String> encoding;
  /// The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against lastRevision or any revision created before.
  final pulumi.Input<String> firstRevisionId;
  /// The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against firstRevision or any revision created after.
  final pulumi.Input<String> lastRevisionId;
  /// The name of the schema that messages published should be
  /// validated against. Format is projects/{project}/schemas/{schema}.
  /// The value of this field will be _deleted-schema_
  /// if the schema has been deleted.
  final pulumi.Input<String> schema;

  /// Creates a new [GetTopicSchemaSetting].
  /// [encoding] The encoding of messages validated against schema. Default value: "ENCODING_UNSPECIFIED" Possible values: ["ENCODING_UNSPECIFIED", "JSON", "BINARY"]
  /// [firstRevisionId] The minimum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against lastRevision or any revision created before.
  /// [lastRevisionId] The maximum (inclusive) revision allowed for validating messages. If empty or not present, allow any revision to be validated against firstRevision or any revision created after.
  /// [schema] The name of the schema that messages published should be
  const GetTopicSchemaSetting({
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

  factory GetTopicSchemaSetting.fromMap(Map<String, dynamic> map) {
    return GetTopicSchemaSetting(
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      firstRevisionId: pulumi.Input.fromValue(map['firstRevisionId'] as String),
      lastRevisionId: pulumi.Input.fromValue(map['lastRevisionId'] as String),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
