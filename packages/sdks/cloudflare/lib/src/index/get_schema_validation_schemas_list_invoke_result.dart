// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schema_validation_schemas_list_result.dart';

/// Result data returned by getSchemaValidationSchemasList.
class GetSchemaValidationSchemasListInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final bool? omitSource;
  /// The items returned by the data source
  final List<GetSchemaValidationSchemasListResult>? results;
  /// Filter for enabled schemas
  final bool? validationEnabled;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetSchemaValidationSchemasListInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [results] The items returned by the data source
  /// [validationEnabled] Filter for enabled schemas
  /// [zoneId] Identifier.
  const GetSchemaValidationSchemasListInvokeResult({
    this.maxItems,
    this.omitSource,
    this.results,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'omitSource': ?omitSource,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSchemaValidationSchemasListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationSchemasListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasListInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSchemaValidationSchemasListResult>(guardedValue, (value) => GetSchemaValidationSchemasListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
