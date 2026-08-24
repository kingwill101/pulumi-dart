// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_operations_result_features.dart';

class GetApiShieldOperationsResult {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  final pulumi.Input<String> endpoint;
  final pulumi.Input<GetApiShieldOperationsResultFeatures> features;
  /// RFC3986-compliant host.
  final pulumi.Input<String> host;
  /// UUID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastUpdated;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  final pulumi.Input<String> method;
  /// UUID.
  final pulumi.Input<String> operationId;

  /// Creates a new [GetApiShieldOperationsResult].
  /// [endpoint] The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  /// [features] Required.
  /// [host] RFC3986-compliant host.
  /// [id] UUID.
  /// [lastUpdated] Required.
  /// [method] The HTTP method used to access the endpoint.
  /// [operationId] UUID.
  const GetApiShieldOperationsResult({
    required this.endpoint,
    required this.features,
    required this.host,
    required this.id,
    required this.lastUpdated,
    required this.method,
    required this.operationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'features': pulumi.Input.mapInputValue<GetApiShieldOperationsResultFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'host': host,
      'id': id,
      'lastUpdated': lastUpdated,
      'method': method,
      'operationId': operationId,
    };
  }

  factory GetApiShieldOperationsResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResult(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      features: pulumi.Input.fromValue(GetApiShieldOperationsResultFeatures.fromMap((map['features']! as Map).cast<String, dynamic>())),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
    );
  }
}
