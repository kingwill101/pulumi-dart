// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_schemas_result.dart';

/// Result data returned by getApiShieldSchemas.
class GetApiShieldSchemasInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final bool? omitSource;
  /// The items returned by the data source
  final List<GetApiShieldSchemasResult>? results;
  /// Flag whether schema is enabled for validation.
  final bool? validationEnabled;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldSchemasInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [results] The items returned by the data source
  /// [validationEnabled] Flag whether schema is enabled for validation.
  /// [zoneId] Identifier.
  const GetApiShieldSchemasInvokeResult({
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiShieldSchemasResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemasInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemasInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiShieldSchemasResult>(guardedValue, (value) => GetApiShieldSchemasResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
