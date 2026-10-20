// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchema.
class GetSchemaDiscoveryengineV1betaResult {
  /// The JSON representation of the schema.
  final String? jsonSchema;
  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String? name;
  /// The structured representation of the schema.
  final Map<String, String>? structSchema;

  /// Creates a new [GetSchemaDiscoveryengineV1betaResult].
  /// [jsonSchema] The JSON representation of the schema.
  /// [name] Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [structSchema] The structured representation of the schema.
  const GetSchemaDiscoveryengineV1betaResult({
    this.jsonSchema,
    this.name,
    this.structSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonSchema': ?jsonSchema,
      'name': ?name,
      'structSchema': ?structSchema,
    };
  }

  factory GetSchemaDiscoveryengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaDiscoveryengineV1betaResult(
      jsonSchema: (() { final guardedValue = map['jsonSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      structSchema: (() { final guardedValue = map['structSchema']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
