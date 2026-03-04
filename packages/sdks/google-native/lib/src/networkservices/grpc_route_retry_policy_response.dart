// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications for retries.
class GrpcRouteRetryPolicyResponse {
  /// Specifies the allowed number of retries. This number must be &gt; 0. If not specified, default to 1.
  final pulumi.Input<int> numRetries;

  /// - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  final pulumi.Input<List<String>> retryConditions;

  /// Creates a new [GrpcRouteRetryPolicyResponse].
  /// [numRetries] Specifies the allowed number of retries. This number must be &gt; 0. If not specified, default to 1.
  /// [retryConditions] - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  GrpcRouteRetryPolicyResponse({
    required this.numRetries,
    required this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numRetries': numRetries,
      'retryConditions': retryConditions,
    };
  }

  factory GrpcRouteRetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRetryPolicyResponse(
      numRetries: pulumi.Input.fromValue(map['numRetries'] as int),
      retryConditions: pulumi.Input.fromValue(
        (map['retryConditions'] as List).cast<String>(),
      ),
    );
  }
}
