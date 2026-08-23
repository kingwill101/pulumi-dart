// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications for retries.
class HttpRouteRetryPolicyResponseNetworkservicesV1beta1 {
  /// Specifies the allowed number of retries. This number must be &gt; 0. If not specified, default to 1.
  final pulumi.Input<int> numRetries;
  /// Specifies a non-zero timeout per retry attempt.
  final pulumi.Input<String> perTryTimeout;
  /// Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy will attempt a retry if the destination service responds with any 5xx response code, of if the destination service does not respond at all, example: disconnect, reset, read timeout, connection failure and refused streams. gateway-error: Similar to 5xx, but only applies to response codes 502, 503, 504. reset: Proxy will attempt a retry if the destination service does not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will retry on failures connecting to destination for example due to connection timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes. Currently the only retriable error supported is 409. refused-stream: Proxy will retry if the destination resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
  final pulumi.Input<List<String>> retryConditions;

  /// Creates a new [HttpRouteRetryPolicyResponseNetworkservicesV1beta1].
  /// [numRetries] Specifies the allowed number of retries. This number must be &gt; 0. If not specified, default to 1.
  /// [perTryTimeout] Specifies a non-zero timeout per retry attempt.
  /// [retryConditions] Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy will attempt a retry if the destination service responds with any 5xx response code, of if the destination service does not respond at all, example: disconnect, reset, read timeout, connection failure and refused streams. gateway-error: Similar to 5xx, but only applies to response codes 502, 503, 504. reset: Proxy will attempt a retry if the destination service does not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will retry on failures connecting to destination for example due to connection timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes. Currently the only retriable error supported is 409. refused-stream: Proxy will retry if the destination resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.
  const HttpRouteRetryPolicyResponseNetworkservicesV1beta1({
    required this.numRetries,
    required this.perTryTimeout,
    required this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numRetries': numRetries,
      'perTryTimeout': perTryTimeout,
      'retryConditions': retryConditions,
    };
  }

  factory HttpRouteRetryPolicyResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRetryPolicyResponseNetworkservicesV1beta1(
      numRetries: pulumi.Input.fromValue(map['numRetries'] as int),
      perTryTimeout: pulumi.Input.fromValue(map['perTryTimeout'] as String),
      retryConditions: pulumi.Input.fromValue((map['retryConditions'] as List).cast<String>()),
    );
  }
}
