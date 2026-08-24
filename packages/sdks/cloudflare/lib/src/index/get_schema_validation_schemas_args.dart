// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_validation_schemas_filter.dart';

/// {@template pulumi_index_get_schema_validation_schemas_get_schema_validation_schemas_args_doc}
/// Arguments for getSchemaValidationSchemas.
/// {@endtemplate}
/// {@macro pulumi_index_get_schema_validation_schemas_get_schema_validation_schemas_args_doc}
class GetSchemaValidationSchemasArgs {
  final pulumi.Input<GetSchemaValidationSchemasFilter?>? filter;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final pulumi.Input<bool?>? omitSource;
  /// UUID.
  final pulumi.Input<String?>? schemaId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSchemaValidationSchemasArgs].
  /// [filter] Optional.
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [schemaId] UUID.
  /// [zoneId] Identifier.
  const GetSchemaValidationSchemasArgs({
    this.filter,
    this.omitSource,
    this.schemaId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetSchemaValidationSchemasFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'omitSource': ?omitSource,
      'schemaId': ?schemaId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationSchemasArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetSchemaValidationSchemasFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
