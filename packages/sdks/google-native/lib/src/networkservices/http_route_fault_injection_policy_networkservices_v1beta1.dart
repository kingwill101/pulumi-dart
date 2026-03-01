// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_fault_injection_policy_abort_networkservices_v1beta1.dart';
import 'http_route_fault_injection_policy_delay_networkservices_v1beta1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicyNetworkservicesV1beta1 {
  /// The specification for aborting to client requests.
  final HttpRouteFaultInjectionPolicyAbortNetworkservicesV1beta1? abort;
  /// The specification for injecting delay to client requests.
  final HttpRouteFaultInjectionPolicyDelayNetworkservicesV1beta1? delay;

  /// Creates a new [HttpRouteFaultInjectionPolicyNetworkservicesV1beta1].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  HttpRouteFaultInjectionPolicyNetworkservicesV1beta1({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?abort == null ? null : abort!.toMap(),
      'delay': ?delay == null ? null : delay!.toMap(),
    };
  }

  factory HttpRouteFaultInjectionPolicyNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyNetworkservicesV1beta1(
      abort: map['abort'] == null ? null : HttpRouteFaultInjectionPolicyAbortNetworkservicesV1beta1.fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null ? null : HttpRouteFaultInjectionPolicyDelayNetworkservicesV1beta1.fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

