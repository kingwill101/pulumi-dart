// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSchema.
class GetSchemaDiscoveryengineV1betaResult {
  /// The JSON representation of the schema.
  final String jsonSchema;
  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String name;
  /// The structured representation of the schema.
  final Map<String, String> structSchema;

  /// Creates a new [GetSchemaDiscoveryengineV1betaResult].
  /// [jsonSchema] The JSON representation of the schema.
  /// [name] Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [structSchema] The structured representation of the schema.
  const GetSchemaDiscoveryengineV1betaResult({
    required this.jsonSchema,
    required this.name,
    required this.structSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonSchema': jsonSchema,
      'name': name,
      'structSchema': structSchema,
    };
  }

  factory GetSchemaDiscoveryengineV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaDiscoveryengineV1betaResult(
      jsonSchema: map['jsonSchema'] as String,
      name: map['name'] as String,
      structSchema: (map['structSchema'] as Map).cast<String, String>(),
    );
  }
}

