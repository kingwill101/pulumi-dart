// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_fault_injection_policy_abort.dart';
import 'http_route_fault_injection_policy_delay.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicy {
  /// The specification for aborting to client requests.
  final pulumi.Input<HttpRouteFaultInjectionPolicyAbort>? abort;

  /// The specification for injecting delay to client requests.
  final pulumi.Input<HttpRouteFaultInjectionPolicyDelay>? delay;

  /// Creates a new [HttpRouteFaultInjectionPolicy].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  HttpRouteFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRouteFaultInjectionPolicyAbort,
            Map<String, dynamic>
          >(abort, (value) => value.toMap()),
      'delay':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRouteFaultInjectionPolicyDelay,
            Map<String, dynamic>
          >(delay, (value) => value.toMap()),
    };
  }

  factory HttpRouteFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicy(
      abort: (() {
        final guardedValue = map['abort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpRouteFaultInjectionPolicyAbort.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      delay: (() {
        final guardedValue = map['delay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpRouteFaultInjectionPolicyDelay.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
