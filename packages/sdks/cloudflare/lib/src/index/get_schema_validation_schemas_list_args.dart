// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_schema_validation_schemas_list_get_schema_validation_schemas_list_args_doc}
/// Arguments for getSchemaValidationSchemasList.
/// {@endtemplate}
/// {@macro pulumi_index_get_schema_validation_schemas_list_get_schema_validation_schemas_list_args_doc}
class GetSchemaValidationSchemasListArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final pulumi.Input<bool?>? omitSource;
  /// Filter for enabled schemas
  final pulumi.Input<bool?>? validationEnabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSchemaValidationSchemasListArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [validationEnabled] Filter for enabled schemas
  /// [zoneId] Identifier.
  const GetSchemaValidationSchemasListArgs({
    this.maxItems,
    this.omitSource,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'omitSource': ?omitSource,
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationSchemasListArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasListArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
