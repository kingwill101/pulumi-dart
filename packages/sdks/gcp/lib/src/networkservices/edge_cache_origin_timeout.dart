// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheOriginTimeout {
  /// The maximum duration to wait for a single origin connection to be established, including DNS lookup, TLS handshake and TCP/QUIC connection establishment.
  /// Defaults to 5 seconds. The timeout must be a value between 1s and 15s.
  /// The connectTimeout capped by the deadline set by the request's maxAttemptsTimeout.  The last connection attempt may have a smaller connectTimeout in order to adhere to the overall maxAttemptsTimeout.
  final pulumi.Input<String>? connectTimeout;
  /// The maximum time across all connection attempts to the origin, including failover origins, before returning an error to the client. A HTTP 504 will be returned if the timeout is reached before a response is returned.
  /// Defaults to 15 seconds. The timeout must be a value between 1s and 30s.
  /// If a failoverOrigin is specified, the maxAttemptsTimeout of the first configured origin sets the deadline for all connection attempts across all failoverOrigins.
  final pulumi.Input<String>? maxAttemptsTimeout;
  /// The maximum duration to wait between reads of a single HTTP connection/stream.
  /// Defaults to 15 seconds.  The timeout must be a value between 1s and 30s.
  /// The readTimeout is capped by the responseTimeout.  All reads of the HTTP connection/stream must be completed by the deadline set by the responseTimeout.
  /// If the response headers have already been written to the connection, the response will be truncated and logged.
  ///
  /// <a name="nested_aws_v4_authentication"></a>The `aws_v4_authentication` block supports:
  final pulumi.Input<String>? readTimeout;
  /// The maximum duration to wait for the last byte of a response to arrive when reading from the HTTP connection/stream.
  /// Defaults to 30 seconds. The timeout must be a value between 1s and 120s.
  /// The responseTimeout starts after the connection has been established.
  /// This also applies to HTTP Chunked Transfer Encoding responses, and/or when an open-ended Range request is made to the origin. Origins that take longer to write additional bytes to the response than the configured responseTimeout will result in an error being returned to the client.
  /// If the response headers have already been written to the connection, the response will be truncated and logged.
  final pulumi.Input<String>? responseTimeout;

  /// Creates a new [EdgeCacheOriginTimeout].
  /// [connectTimeout] The maximum duration to wait for a single origin connection to be established, including DNS lookup, TLS handshake and TCP/QUIC connection establishment.
  /// [maxAttemptsTimeout] The maximum time across all connection attempts to the origin, including failover origins, before returning an error to the client. A HTTP 504 will be returned if the timeout is reached before a response is returned.
  /// [readTimeout] The maximum duration to wait between reads of a single HTTP connection/stream.
  /// [responseTimeout] The maximum duration to wait for the last byte of a response to arrive when reading from the HTTP connection/stream.
  EdgeCacheOriginTimeout({
    this.connectTimeout,
    this.maxAttemptsTimeout,
    this.readTimeout,
    this.responseTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': ?connectTimeout,
      'maxAttemptsTimeout': ?maxAttemptsTimeout,
      'readTimeout': ?readTimeout,
      'responseTimeout': ?responseTimeout,
    };
  }

  factory EdgeCacheOriginTimeout.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginTimeout(
      connectTimeout: map['connectTimeout'] == null ? null : (map['connectTimeout'] as String).input(),
      maxAttemptsTimeout: map['maxAttemptsTimeout'] == null ? null : (map['maxAttemptsTimeout'] as String).input(),
      readTimeout: map['readTimeout'] == null ? null : (map['readTimeout'] as String).input(),
      responseTimeout: map['responseTimeout'] == null ? null : (map['responseTimeout'] as String).input(),
    );
  }
}

