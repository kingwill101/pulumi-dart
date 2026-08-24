// ignore_for_file: unused_element, unnecessary_cast

import 'get_schema_validation_schemas_filter.dart';

/// Result data returned by getSchemaValidationSchemas.
class GetSchemaValidationSchemasResult {
  final String? createdAt;
  final GetSchemaValidationSchemasFilter? filter;
  /// UUID.
  final String? id;
  /// The kind of the schema
  /// Available values: "openapiV3".
  final String? kind;
  /// A human-readable name for the schema
  final String? name;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final bool? omitSource;
  /// UUID.
  final String? schemaId;
  /// The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  final String? source;
  /// An indicator if this schema is enabled
  final bool? validationEnabled;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetSchemaValidationSchemasResult].
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] UUID.
  /// [kind] The kind of the schema
  /// [name] A human-readable name for the schema
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [schemaId] UUID.
  /// [source] The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  /// [validationEnabled] An indicator if this schema is enabled
  /// [zoneId] Identifier.
  const GetSchemaValidationSchemasResult({
    this.createdAt,
    this.filter,
    this.id,
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
      'filter': ?filter?.toMap(),
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'omitSource': ?omitSource,
      'schemaId': ?schemaId,
      'source': ?source,
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationSchemasResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetSchemaValidationSchemasFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
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
