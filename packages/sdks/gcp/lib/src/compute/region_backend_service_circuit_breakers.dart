// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_circuit_breakers_connect_timeout.dart';

class RegionBackendServiceCircuitBreakers {
  /// The timeout for new network connections to hosts.
  /// Structure is documented below.
  final pulumi.Input<RegionBackendServiceCircuitBreakersConnectTimeout>? connectTimeout;
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

  /// Creates a new [RegionBackendServiceCircuitBreakers].
  /// [connectTimeout] The timeout for new network connections to hosts.
  /// [maxConnections] The maximum number of connections to the backend cluster.
  /// [maxPendingRequests] The maximum number of pending requests to the backend cluster.
  /// [maxRequests] The maximum number of parallel requests to the backend cluster.
  /// [maxRequestsPerConnection] Maximum requests for a single backend connection. This parameter
  /// [maxRetries] The maximum number of parallel retries to the backend cluster.
  RegionBackendServiceCircuitBreakers({
    this.connectTimeout,
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': ?pulumi.Input.mapOptionalInputValue<RegionBackendServiceCircuitBreakersConnectTimeout, Map<String, dynamic>>(connectTimeout, (value) => value.toMap()),
      'maxConnections': ?maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
      'maxRequests': ?maxRequests,
      'maxRequestsPerConnection': ?maxRequestsPerConnection,
      'maxRetries': ?maxRetries,
    };
  }

  factory RegionBackendServiceCircuitBreakers.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceCircuitBreakers(
      connectTimeout: (() { final guardedValue = map['connectTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionBackendServiceCircuitBreakersConnectTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPendingRequests: (() { final guardedValue = map['maxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequests: (() { final guardedValue = map['maxRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequestsPerConnection: (() { final guardedValue = map['maxRequestsPerConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

