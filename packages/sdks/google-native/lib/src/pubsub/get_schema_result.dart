// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchema.
class GetSchemaResult {
  /// The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  final String? definition;
  /// Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  final String? name;
  /// The timestamp that the revision was created.
  final String? revisionCreateTime;
  /// Immutable. The revision ID of the schema.
  final String? revisionId;
  /// The type of the schema definition.
  final String? type;

  /// Creates a new [GetSchemaResult].
  /// [definition] The definition of the schema. This should contain a string representing the full definition of the schema that is a valid schema definition of the type specified in `type`.
  /// [name] Name of the schema. Format is `projects/{project}/schemas/{schema}`.
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] Immutable. The revision ID of the schema.
  /// [type] The type of the schema definition.
  const GetSchemaResult({
    this.definition,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'name': ?name,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'type': ?type,
    };
  }

  factory GetSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaResult(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
