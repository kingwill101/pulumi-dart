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
  const BackendServiceCircuitBreakers({
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
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceCircuitBreakersConnectTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPendingRequests: (() { final guardedValue = map['maxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequests: (() { final guardedValue = map['maxRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequestsPerConnection: (() { final guardedValue = map['maxRequestsPerConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

