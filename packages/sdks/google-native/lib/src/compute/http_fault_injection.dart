// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_fault_abort.dart';
import 'http_fault_delay.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by the load balancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the load balancer for a percentage of requests.
class HttpFaultInjection {
  /// The specification for how client requests are aborted as part of fault injection.
  final pulumi.Input<HttpFaultAbort>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  final pulumi.Input<HttpFaultDelay>? delay;

  /// Creates a new [HttpFaultInjection].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  HttpFaultInjection({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<HttpFaultAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<HttpFaultDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory HttpFaultInjection.fromMap(Map<String, dynamic> map) {
    return HttpFaultInjection(
      abort: map['abort'] == null ? null : (HttpFaultAbort.fromMap((map['abort'] as Map).cast<String, dynamic>())).input(),
      delay: map['delay'] == null ? null : (HttpFaultDelay.fromMap((map['delay'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

