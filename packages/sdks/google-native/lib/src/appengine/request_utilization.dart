// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target scaling by request utilization. Only applicable in the App Engine flexible environment.
class RequestUtilization {
  /// Target number of concurrent requests.
  final pulumi.Input<int>? targetConcurrentRequests;

  /// Target requests per second.
  final pulumi.Input<int>? targetRequestCountPerSecond;

  /// Creates a new [RequestUtilization].
  /// [targetConcurrentRequests] Target number of concurrent requests.
  /// [targetRequestCountPerSecond] Target requests per second.
  RequestUtilization({
    this.targetConcurrentRequests,
    this.targetRequestCountPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetConcurrentRequests': ?targetConcurrentRequests,
      'targetRequestCountPerSecond': ?targetRequestCountPerSecond,
    };
  }

  factory RequestUtilization.fromMap(Map<String, dynamic> map) {
    return RequestUtilization(
      targetConcurrentRequests: (() {
        final guardedValue = map['targetConcurrentRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetRequestCountPerSecond: (() {
        final guardedValue = map['targetRequestCountPerSecond'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
