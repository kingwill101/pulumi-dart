// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_fault_injection_policy_abort_networkservices_v1beta1.dart';
import 'grpc_route_fault_injection_policy_delay_networkservices_v1beta1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1 {
  /// The specification for aborting to client requests.
  final pulumi.Input<GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1>? abort;
  /// The specification for injecting delay to client requests.
  final pulumi.Input<GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1>? delay;

  /// Creates a new [GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  const GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1(
      abort: (() { final guardedValue = map['abort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
