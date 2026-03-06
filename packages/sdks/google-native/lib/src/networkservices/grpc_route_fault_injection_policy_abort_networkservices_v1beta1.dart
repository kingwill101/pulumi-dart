// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1 {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final pulumi.Input<int>? httpStatus;
  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final pulumi.Input<int>? percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1].
  /// [httpStatus] The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  /// [percentage] The percentage of traffic which will be aborted. The value must be between [0, 100]
  const GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1(
      httpStatus: (() { final guardedValue = map['httpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

