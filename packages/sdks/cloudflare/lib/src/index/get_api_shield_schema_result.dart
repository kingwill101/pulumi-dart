// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiShieldSchema.
class GetApiShieldSchemaResult {
  final String? createdAt;
  /// Kind of schema
  /// Available values: "openapiV3".
  final String? kind;
  /// Name of the schema
  final String? name;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final bool? omitSource;
  final String? schemaId;
  /// Source of the schema
  final String? source;
  /// Flag whether schema is enabled for validation.
  final bool? validationEnabled;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldSchemaResult].
  /// [createdAt] Optional.
  /// [kind] Kind of schema
  /// [name] Name of the schema
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [schemaId] Optional.
  /// [source] Source of the schema
  /// [validationEnabled] Flag whether schema is enabled for validation.
  /// [zoneId] Identifier.
  const GetApiShieldSchemaResult({
    this.createdAt,
    this.kind,
    this.name,
    this.omitSource,
    this.schemaId,
    this.source,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'kind': ?kind,
      'name': ?name,
      'omitSource': ?omitSource,
      'schemaId': ?schemaId,
      'source': ?source,
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemaResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemaResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
