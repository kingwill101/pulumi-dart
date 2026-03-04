// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for how requests are aborted as part of fault injection.
class HttpFaultAbortResponseComputeV1 {
  /// The HTTP status code used to abort the request. The value must be from 200 to 599 inclusive. For gRPC protocol, the gRPC status code is mapped to HTTP status code according to this mapping table. HTTP status 200 is mapped to gRPC status UNKNOWN. Injecting an OK status is currently not supported by Traffic Director.
  final pulumi.Input<int> httpStatus;

  /// The percentage of traffic for connections, operations, or requests that is aborted as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double> percentage;

  /// Creates a new [HttpFaultAbortResponseComputeV1].
  /// [httpStatus] The HTTP status code used to abort the request. The value must be from 200 to 599 inclusive. For gRPC protocol, the gRPC status code is mapped to HTTP status code according to this mapping table. HTTP status 200 is mapped to gRPC status UNKNOWN. Injecting an OK status is currently not supported by Traffic Director.
  /// [percentage] The percentage of traffic for connections, operations, or requests that is aborted as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultAbortResponseComputeV1({
    required this.httpStatus,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': httpStatus,
      'percentage': percentage,
    };
  }

  factory HttpFaultAbortResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultAbortResponseComputeV1(
      httpStatus: pulumi.Input.fromValue(map['httpStatus'] as int),
      percentage: pulumi.Input.fromValue(map['percentage'] as double),
    );
  }
}
