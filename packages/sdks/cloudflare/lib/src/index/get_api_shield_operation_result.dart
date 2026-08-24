// ignore_for_file: unused_element, unnecessary_cast

import 'get_api_shield_operation_features.dart';
import 'get_api_shield_operation_filter.dart';
import 'get_api_shield_operation_schemas.dart';

/// Result data returned by getApiShieldOperation.
class GetApiShieldOperationResult {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  final String? endpoint;
  /// Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  final List<String>? feature;
  final GetApiShieldOperationFeatures? features;
  final GetApiShieldOperationFilter? filter;
  /// RFC3986-compliant host.
  final String? host;
  /// UUID.
  final String? id;
  final String? lastUpdated;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  final String? method;
  /// UUID.
  final String? operationId;
  /// OpenAPI JSON schemas for an operation, including both user-uploaded and Cloudflare-learned schemas.
  final GetApiShieldOperationSchemas? schemas;
  /// When true, includes OpenAPI schemas (both uploaded and learned) for the operation in the response. Due to the conversion overhead, this parameter is only supported on single-operation retrieval.
  final bool? withSchemas;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetApiShieldOperationResult].
  /// [endpoint] The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  /// [feature] Add feature(s) to the results. The feature name that is given here corresponds to the resulting feature object. Have a look at the top-level object description for more details on the specific meaning.
  /// [features] Optional.
  /// [filter] Optional.
  /// [host] RFC3986-compliant host.
  /// [id] UUID.
  /// [lastUpdated] Optional.
  /// [method] The HTTP method used to access the endpoint.
  /// [operationId] UUID.
  /// [schemas] OpenAPI JSON schemas for an operation, including both user-uploaded and Cloudflare-learned schemas.
  /// [withSchemas] When true, includes OpenAPI schemas (both uploaded and learned) for the operation in the response. Due to the conversion overhead, this parameter is only supported on single-operation retrieval.
  /// [zoneId] Identifier.
  const GetApiShieldOperationResult({
    this.endpoint,
    this.feature,
    this.features,
    this.filter,
    this.host,
    this.id,
    this.lastUpdated,
    this.method,
    this.operationId,
    this.schemas,
    this.withSchemas,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'feature': ?feature,
      'features': ?features?.toMap(),
      'filter': ?filter?.toMap(),
      'host': ?host,
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'method': ?method,
      'operationId': ?operationId,
      'schemas': ?schemas?.toMap(),
      'withSchemas': ?withSchemas,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationResult(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      feature: (() { final guardedValue = map['feature']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return GetApiShieldOperationFeatures.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetApiShieldOperationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return GetApiShieldOperationSchemas.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      withSchemas: (() { final guardedValue = map['withSchemas']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
