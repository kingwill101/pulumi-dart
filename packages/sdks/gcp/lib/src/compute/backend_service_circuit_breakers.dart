// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_circuit_breakers_connect_timeout.dart';

class BackendServiceCircuitBreakers {
  /// The timeout for new network connections to hosts.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceCircuitBreakersConnectTimeout>? connectTimeout;
  /// The maximum number of connections to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int>? maxConnections;
  /// The maximum number of pending requests to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int>? maxPendingRequests;
  /// The maximum number of parallel requests to the backend cluster.
  /// Defaults to 1024.
  final pulumi.Input<int>? maxRequests;
  /// Maximum requests for a single backend connection. This parameter
  /// is respected by both the HTTP/1.1 and HTTP/2 implementations. If
  /// not specified, there is no limit. Setting this parameter to 1
  /// will effectively disable keep alive.
  final pulumi.Input<int>? maxRequestsPerConnection;
  /// The maximum number of parallel retries to the backend cluster.
  /// Defaults to 3.
  final pulumi.Input<int>? maxRetries;

  /// Creates a new [BackendServiceCircuitBreakers].
  /// [connectTimeout] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  BackendServiceCircuitBreakers({
    this.connectTimeout,
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': ?pulumi.Input.mapOptionalInputValue<BackendServiceCircuitBreakersConnectTimeout, Map<String, dynamic>>(connectTimeout, (value) => value.toMap()),
      'maxConnections': ?maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
      'maxRequests': ?maxRequests,
      'maxRequestsPerConnection': ?maxRequestsPerConnection,
      'maxRetries': ?maxRetries,
    };
  }

  factory BackendServiceCircuitBreakers.fromMap(Map<String, dynamic> map) {
    return BackendServiceCircuitBreakers(
      connectTimeout: map['connectTimeout'] == null ? null : (BackendServiceCircuitBreakersConnectTimeout.fromMap((map['connectTimeout'] as Map).cast<String, dynamic>())).input(),
      maxConnections: map['maxConnections'] == null ? null : (map['maxConnections'] as int).input(),
      maxPendingRequests: map['maxPendingRequests'] == null ? null : (map['maxPendingRequests'] as int).input(),
      maxRequests: map['maxRequests'] == null ? null : (map['maxRequests'] as int).input(),
      maxRequestsPerConnection: map['maxRequestsPerConnection'] == null ? null : (map['maxRequestsPerConnection'] as int).input(),
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries'] as int).input(),
    );
  }
}

