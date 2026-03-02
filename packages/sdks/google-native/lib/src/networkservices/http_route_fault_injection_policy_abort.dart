// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final pulumi.Input<int>? httpStatus;
  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final pulumi.Input<int>? percentage;

  /// Creates a new [HttpRouteFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  /// [percentage] The percentage of traffic which will be aborted. The value must be between [0, 100]
  HttpRouteFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'percentage': ?percentage,
    };
  }

  factory HttpRouteFaultInjectionPolicyAbort.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyAbort(
      httpStatus: map['httpStatus'] == null ? null : (map['httpStatus'] as int).input(),
      percentage: map['percentage'] == null ? null : (map['percentage'] as int).input(),
    );
  }
}

