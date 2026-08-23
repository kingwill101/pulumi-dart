// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';
import 'trace_response.dart';

/// Results of the configuration analysis from the last run of the test.
class ReachabilityDetailsResponse {
  /// The details of a failure or a cancellation of reachability analysis.
  final pulumi.Input<StatusResponse> error;
  /// The overall result of the test's configuration analysis.
  final pulumi.Input<String> result;
  /// Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.
  final pulumi.Input<List<TraceResponse>> traces;
  /// The time of the configuration analysis.
  final pulumi.Input<String> verifyTime;

  /// Creates a new [ReachabilityDetailsResponse].
  /// [error] The details of a failure or a cancellation of reachability analysis.
  /// [result] The overall result of the test's configuration analysis.
  /// [traces] Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.
  /// [verifyTime] The time of the configuration analysis.
  const ReachabilityDetailsResponse({
    required this.error,
    required this.result,
    required this.traces,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'result': result,
      'traces': pulumi.Input.mapInputValue<List<TraceResponse>, List<Map<String, dynamic>>>(traces, (value) => pulumi.Input.encodeList<TraceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'verifyTime': verifyTime,
    };
  }

  factory ReachabilityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReachabilityDetailsResponse(
      error: pulumi.Input.fromValue(StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      result: pulumi.Input.fromValue(map['result'] as String),
      traces: pulumi.Input.fromValue(pulumi.Input.decodeList<TraceResponse>(map['traces']!, (value) => TraceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      verifyTime: pulumi.Input.fromValue(map['verifyTime'] as String),
    );
  }
}
