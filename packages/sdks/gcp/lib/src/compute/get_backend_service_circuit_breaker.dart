// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_circuit_breaker_connect_timeout.dart';

class GetBackendServiceCircuitBreaker {
  /// The timeout for new network connections to hosts.
  final pulumi.Input<List<GetBackendServiceCircuitBreakerConnectTimeout>>
  connectTimeouts;

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

  /// Creates a new [GetBackendServiceCircuitBreaker].
  /// [connectTimeouts] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  GetBackendServiceCircuitBreaker({
    required this.connectTimeouts,
    required this.maxConnections,
    required this.maxPendingRequests,
    required this.maxRequests,
    required this.maxRequestsPerConnection,
    required this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeouts':
          pulumi.Input.mapInputValue<
            List<GetBackendServiceCircuitBreakerConnectTimeout>,
            List<Map<String, dynamic>>
          >(
            connectTimeouts,
            (value) =>
                pulumi.Input.encodeList<
                  GetBackendServiceCircuitBreakerConnectTimeout,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
      'maxRequests': maxRequests,
      'maxRequestsPerConnection': maxRequestsPerConnection,
      'maxRetries': maxRetries,
    };
  }

  factory GetBackendServiceCircuitBreaker.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCircuitBreaker(
      connectTimeouts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetBackendServiceCircuitBreakerConnectTimeout>(
          map['connectTimeouts']!,
          (value) => GetBackendServiceCircuitBreakerConnectTimeout.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxPendingRequests: pulumi.Input.fromValue(
        map['maxPendingRequests'] as int,
      ),
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
      maxRequestsPerConnection: pulumi.Input.fromValue(
        map['maxRequestsPerConnection'] as int,
      ),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
    );
  }
}
