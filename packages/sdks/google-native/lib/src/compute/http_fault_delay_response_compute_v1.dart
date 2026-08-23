// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_v1.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponseComputeV1 {
  /// Specifies the value of the fixed delay interval.
  final pulumi.Input<DurationResponseComputeV1> fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final pulumi.Input<double> percentage;

  /// Creates a new [HttpFaultDelayResponseComputeV1].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  const HttpFaultDelayResponseComputeV1({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': pulumi.Input.mapInputValue<DurationResponseComputeV1, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': percentage,
    };
  }

  factory HttpFaultDelayResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponseComputeV1(
      fixedDelay: pulumi.Input.fromValue(DurationResponseComputeV1.fromMap((map['fixedDelay']! as Map).cast<String, dynamic>())),
      percentage: pulumi.Input.fromValue(map['percentage'] as double),
    );
  }
}
