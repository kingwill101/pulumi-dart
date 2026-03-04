// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_fault_abort_compute_v1.dart';
import 'http_fault_delay_compute_v1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by the load balancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the load balancer for a percentage of requests.
class HttpFaultInjectionComputeV1 {
  /// The specification for how client requests are aborted as part of fault injection.
  final pulumi.Input<HttpFaultAbortComputeV1>? abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  final pulumi.Input<HttpFaultDelayComputeV1>? delay;

  /// Creates a new [HttpFaultInjectionComputeV1].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  HttpFaultInjectionComputeV1({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort':
          ?pulumi.Input.mapOptionalInputValue<
            HttpFaultAbortComputeV1,
            Map<String, dynamic>
          >(abort, (value) => value.toMap()),
      'delay':
          ?pulumi.Input.mapOptionalInputValue<
            HttpFaultDelayComputeV1,
            Map<String, dynamic>
          >(delay, (value) => value.toMap()),
    };
  }

  factory HttpFaultInjectionComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultInjectionComputeV1(
      abort: (() {
        final guardedValue = map['abort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpFaultAbortComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      delay: (() {
        final guardedValue = map['delay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpFaultDelayComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
