// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_networkmanagement_v1beta1.dart';
import 'trace_response_networkmanagement_v1beta1.dart';

/// Results of the configuration analysis from the last run of the test.
class ReachabilityDetailsResponseNetworkmanagementV1beta1 {
  /// The details of a failure or a cancellation of reachability analysis.
  final StatusResponseNetworkmanagementV1beta1 error;
  /// The overall result of the test's configuration analysis.
  final String result;
  /// Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.
  final List<TraceResponseNetworkmanagementV1beta1> traces;
  /// The time of the configuration analysis.
  final String verifyTime;

  /// Creates a new [ReachabilityDetailsResponseNetworkmanagementV1beta1].
  /// [error] The details of a failure or a cancellation of reachability analysis.
  /// [result] The overall result of the test's configuration analysis.
  /// [traces] Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.
  /// [verifyTime] The time of the configuration analysis.
  ReachabilityDetailsResponseNetworkmanagementV1beta1({
    required this.error,
    required this.result,
    required this.traces,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'result': result,
      'traces': pulumi.Input.encodeList<TraceResponseNetworkmanagementV1beta1, Map<String, dynamic>>(traces, (value) => value.toMap()),
      'verifyTime': verifyTime,
    };
  }

  factory ReachabilityDetailsResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return ReachabilityDetailsResponseNetworkmanagementV1beta1(
      error: StatusResponseNetworkmanagementV1beta1.fromMap((map['error'] as Map).cast<String, dynamic>()),
      result: map['result'] as String,
      traces: pulumi.Input.decodeList<TraceResponseNetworkmanagementV1beta1>(map['traces'], (value) => TraceResponseNetworkmanagementV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      verifyTime: map['verifyTime'] as String,
    );
  }
}

