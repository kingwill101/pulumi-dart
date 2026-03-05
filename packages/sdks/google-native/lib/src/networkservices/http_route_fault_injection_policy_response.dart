// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_fault_injection_policy_abort_response.dart';
import 'http_route_fault_injection_policy_delay_response.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicyResponse {
  /// The specification for aborting to client requests.
  final pulumi.Input<HttpRouteFaultInjectionPolicyAbortResponse> abort;
  /// The specification for injecting delay to client requests.
  final pulumi.Input<HttpRouteFaultInjectionPolicyDelayResponse> delay;

  /// Creates a new [HttpRouteFaultInjectionPolicyResponse].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  HttpRouteFaultInjectionPolicyResponse({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': pulumi.Input.mapInputValue<HttpRouteFaultInjectionPolicyAbortResponse, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': pulumi.Input.mapInputValue<HttpRouteFaultInjectionPolicyDelayResponse, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory HttpRouteFaultInjectionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyResponse(
      abort: pulumi.Input.fromValue(HttpRouteFaultInjectionPolicyAbortResponse.fromMap((map['abort']! as Map).cast<String, dynamic>())),
      delay: pulumi.Input.fromValue(HttpRouteFaultInjectionPolicyDelayResponse.fromMap((map['delay']! as Map).cast<String, dynamic>())),
    );
  }
}

