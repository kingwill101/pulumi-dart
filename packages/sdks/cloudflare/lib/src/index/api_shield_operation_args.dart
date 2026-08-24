// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_operation_api_shield_operation_args_doc}
/// The set of arguments for ApiShieldOperation.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_operation_api_shield_operation_args_doc}
class ApiShieldOperationArgs {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  final pulumi.Input<String> endpoint;
  /// RFC3986-compliant host.
  final pulumi.Input<String> host;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  final pulumi.Input<String> method;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldOperationArgs].
  /// [endpoint] The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  /// [host] RFC3986-compliant host.
  /// [method] The HTTP method used to access the endpoint.
  /// [zoneId] Identifier.
  const ApiShieldOperationArgs({
    required this.endpoint,
    required this.host,
    required this.method,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'host': host,
      'method': method,
      'zoneId': zoneId,
    };
  }

  factory ApiShieldOperationArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationArgs(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
