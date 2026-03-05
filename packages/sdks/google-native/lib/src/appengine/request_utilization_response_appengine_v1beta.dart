// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilizationResponseAppengineV1beta {
  /// Target number of concurrent requests.
  final pulumi.Input<int> targetConcurrentRequests;
  /// Target requests per second.
  final pulumi.Input<int> targetRequestCountPerSecond;

  /// Creates a new [RequestUtilizationResponseAppengineV1beta].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  RequestUtilizationResponseAppengineV1beta({
    required this.targetConcurrentRequests,
    required this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConcurrentRequests': targetConcurrentRequests,
      'targetRequestCountPerSecond': targetRequestCountPerSecond,
    };
  }

  factory RequestUtilizationResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return RequestUtilizationResponseAppengineV1beta(
      targetConcurrentRequests: pulumi.Input.fromValue(map['targetConcurrentRequests'] as int),
      targetRequestCountPerSecond: pulumi.Input.fromValue(map['targetRequestCountPerSecond'] as int),
    );
  }
}

