// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_operation_features.dart';
import 'api_shield_operation_schemas.dart';

/// Input properties used for looking up and filtering ApiShieldOperation resources.
class ApiShieldOperationState {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  final pulumi.Input<String?>? endpoint;
  final pulumi.Input<ApiShieldOperationFeatures?>? features;
  /// RFC3986-compliant host.
  final pulumi.Input<String?>? host;
  final pulumi.Input<String?>? lastUpdated;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  final pulumi.Input<String?>? method;
  /// UUID.
  final pulumi.Input<String?>? operationId;
  /// OpenAPI JSON schemas for an operation, including both user-uploaded and Cloudflare-learned schemas.
  final pulumi.Input<ApiShieldOperationSchemas?>? schemas;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldOperationState].
  /// [endpoint] The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  /// [features] Optional.
  /// [host] RFC3986-compliant host.
  /// [lastUpdated] Optional.
  /// [method] The HTTP method used to access the endpoint.
  /// [operationId] UUID.
  /// [schemas] OpenAPI JSON schemas for an operation, including both user-uploaded and Cloudflare-learned schemas.
  /// [zoneId] Identifier.
  const ApiShieldOperationState({
    this.endpoint,
    this.features,
    this.host,
    this.lastUpdated,
    this.method,
    this.operationId,
    this.schemas,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'features': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'host': ?host,
      'lastUpdated': ?lastUpdated,
      'method': ?method,
      'operationId': ?operationId,
      'schemas': ?pulumi.Input.mapOptionalInputValue<ApiShieldOperationSchemas, Map<String, dynamic>>(schemas, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldOperationState.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationState(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationFeatures.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemas: (() { final guardedValue = map['schemas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiShieldOperationSchemas.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
