// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_fault_injection_policy_abort_response_networkservices_v1beta1.dart';
import 'grpc_route_fault_injection_policy_delay_response_networkservices_v1beta1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1 {
  /// The specification for aborting to client requests.
  final pulumi.Input<GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1> abort;
  /// The specification for injecting delay to client requests.
  final pulumi.Input<GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1> delay;

  /// Creates a new [GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1].
  /// [abort] The specification for aborting to client requests.
  /// [delay] The specification for injecting delay to client requests.
  const GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': pulumi.Input.mapInputValue<GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': pulumi.Input.mapInputValue<GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1(
      abort: pulumi.Input.fromValue(GrpcRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1.fromMap((map['abort']! as Map).cast<String, dynamic>())),
      delay: pulumi.Input.fromValue(GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1.fromMap((map['delay']! as Map).cast<String, dynamic>())),
    );
  }
}
