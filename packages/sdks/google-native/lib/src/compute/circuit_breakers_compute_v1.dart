// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings controlling the volume of requests, connections and retries to this backend service.
class CircuitBreakersComputeV1 {
  /// The maximum number of connections to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? maxConnections;
  /// The maximum number of pending requests allowed to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? maxPendingRequests;
  /// The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  final pulumi.Input<int>? maxRequests;
  /// Maximum requests for a single connection to the backend service. This parameter is respected by both the HTTP/1.1 and HTTP/2 implementations. If not specified, there is no limit. Setting this parameter to 1 will effectively disable keep alive. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? maxRequestsPerConnection;
  /// The maximum number of parallel retries allowed to the backend cluster. If not specified, the default is 1. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  final pulumi.Input<int>? maxRetries;

  /// Creates a new [CircuitBreakersComputeV1].
  /// [maxConnections] The maximum number of connections to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxPendingRequests] The maximum number of pending requests allowed to the backend service. If not specified, there is no limit. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxRequests] The maximum number of parallel requests that allowed to the backend service. If not specified, there is no limit.
  /// [maxRequestsPerConnection] Maximum requests for a single connection to the backend service. This parameter is respected by both the HTTP/1.1 and HTTP/2 implementations. If not specified, there is no limit. Setting this parameter to 1 will effectively disable keep alive. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  /// [maxRetries] The maximum number of parallel retries allowed to the backend cluster. If not specified, the default is 1. Not supported when the backend service is referenced by a URL map that is bound to target gRPC proxy that has validateForProxyless field set to true.
  const CircuitBreakersComputeV1({
    this.maxConnections,
    this.maxPendingRequests,
    this.maxRequests,
    this.maxRequestsPerConnection,
    this.maxRetries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': ?maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
      'maxRequests': ?maxRequests,
      'maxRequestsPerConnection': ?maxRequestsPerConnection,
      'maxRetries': ?maxRetries,
    };
  }

  factory CircuitBreakersComputeV1.fromMap(Map<String, dynamic> map) {
    return CircuitBreakersComputeV1(
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPendingRequests: (() { final guardedValue = map['maxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequests: (() { final guardedValue = map['maxRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequestsPerConnection: (() { final guardedValue = map['maxRequestsPerConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
