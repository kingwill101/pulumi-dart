// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_discovery_operations_result_features.dart';

class GetApiShieldDiscoveryOperationsResult {
  /// The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  final pulumi.Input<String> endpoint;
  final pulumi.Input<GetApiShieldDiscoveryOperationsResultFeatures> features;
  /// RFC3986-compliant host.
  final pulumi.Input<String> host;
  /// UUID.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastUpdated;
  /// The HTTP method used to access the endpoint.
  /// Available values: "GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "CONNECT", "PATCH", "TRACE".
  final pulumi.Input<String> method;
  /// API discovery engine(s) that discovered this operation
  final pulumi.Input<List<String>> origins;
  /// State of operation in API Discovery
  /// * `review` - Operation is not saved into API Shield Endpoint Management
  /// * `saved` - Operation is saved into API Shield Endpoint Management
  /// * `ignored` - Operation is marked as ignored
  /// Available values: "review", "saved", "ignored".
  final pulumi.Input<String> state;

  /// Creates a new [GetApiShieldDiscoveryOperationsResult].
  /// [endpoint] The endpoint which can contain path parameter templates in curly braces, each will be replaced from left to right with {varN}, starting with {var1}, during insertion. This will further be Cloudflare-normalized upon insertion. See: https://developers.cloudflare.com/rules/normalization/how-it-works/.
  /// [features] Required.
  /// [host] RFC3986-compliant host.
  /// [id] UUID.
  /// [lastUpdated] Required.
  /// [method] The HTTP method used to access the endpoint.
  /// [origins] API discovery engine(s) that discovered this operation
  /// [state] State of operation in API Discovery
  const GetApiShieldDiscoveryOperationsResult({
    required this.endpoint,
    required this.features,
    required this.host,
    required this.id,
    required this.lastUpdated,
    required this.method,
    required this.origins,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'features': pulumi.Input.mapInputValue<GetApiShieldDiscoveryOperationsResultFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'host': host,
      'id': id,
      'lastUpdated': lastUpdated,
      'method': method,
      'origins': origins,
      'state': state,
    };
  }

  factory GetApiShieldDiscoveryOperationsResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldDiscoveryOperationsResult(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      features: pulumi.Input.fromValue(GetApiShieldDiscoveryOperationsResultFeatures.fromMap((map['features']! as Map).cast<String, dynamic>())),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      method: pulumi.Input.fromValue(map['method'] as String),
      origins: pulumi.Input.fromValue((map['origins'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
