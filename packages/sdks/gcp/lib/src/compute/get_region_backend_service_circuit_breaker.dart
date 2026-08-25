// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_circuit_breaker_connect_timeout.dart';

class GetRegionBackendServiceCircuitBreaker {
  /// The timeout for new network connections to hosts.
  final pulumi.Input<List<GetRegionBackendServiceCircuitBreakerConnectTimeout>> connectTimeouts;
  /// The maximum number of connections to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int> maxConnections;
  /// The maximum number of pending requests to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int> maxPendingRequests;
  /// The maximum number of parallel requests to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int> maxRequests;
  /// Maximum requests for a single backend connection. This parameter
  /// is respected by both the HTTP/1.1 and HTTP/2 implementations. If
  /// not specified, there is no limit. Setting this parameter to 1
  /// will effectively disable keep alive.
  final pulumi.Input<int> maxRequestsPerConnection;
  /// The maximum number of parallel retries to the backend cluster.
  /// Defaults to 3.
  final pulumi.Input<int> maxRetries;

  /// Creates a new [GetRegionBackendServiceCircuitBreaker].
  /// [connectTimeouts] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  const GetRegionBackendServiceCircuitBreaker({
    required this.connectTimeouts,
    required this.maxConnections,
    required this.maxPendingRequests,
    required this.maxRequests,
    required this.maxRequestsPerConnection,
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeouts': pulumi.Input.mapInputValue<List<GetRegionBackendServiceCircuitBreakerConnectTimeout>, List<Map<String, dynamic>>>(connectTimeouts, (value) => pulumi.Input.encodeList<GetRegionBackendServiceCircuitBreakerConnectTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
      'maxRequests': maxRequests,
      'maxRequestsPerConnection': maxRequestsPerConnection,
      'maxRetries': maxRetries,
    };
  }

  factory GetRegionBackendServiceCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceCircuitBreaker(
      connectTimeouts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionBackendServiceCircuitBreakerConnectTimeout>(map['connectTimeouts']!, (value) => GetRegionBackendServiceCircuitBreakerConnectTimeout.fromMap((value as Map).cast<String, dynamic>()))),
      maxConnections: pulumi.Input.fromValue((map['maxConnections'] as num).toInt()),
      maxPendingRequests: pulumi.Input.fromValue((map['maxPendingRequests'] as num).toInt()),
      maxRequests: pulumi.Input.fromValue((map['maxRequests'] as num).toInt()),
      maxRequestsPerConnection: pulumi.Input.fromValue((map['maxRequestsPerConnection'] as num).toInt()),
      maxRetries: pulumi.Input.fromValue((map['maxRetries'] as num).toInt()),
    );
  }
}
