// ignore_for_file: unused_element, unnecessary_cast


/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1 {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final int httpStatus;
  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final int percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1].
  /// [httpStatus] The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  /// [percentage] The percentage of traffic which will be aborted. The value must be between [0, 100]
  GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1({
    required this.httpStatus,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': httpStatus,
      'percentage': percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1(
      httpStatus: map['httpStatus'] as int,
      percentage: map['percentage'] as int,
    );
  }
}

