// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_location_response.dart';
import 'endpoint_info_response.dart';
import 'latency_distribution_response.dart';
import 'status_response.dart';

/// Results of active probing from the last run of the test.
class ProbingDetailsResponse {
  /// The reason probing was aborted.
  final pulumi.Input<String> abortCause;
  /// The EdgeLocation from which a packet destined for/originating from the internet will egress/ingress the Google network. This will only be populated for a connectivity test which has an internet destination/source address. The absence of this field *must not* be used as an indication that the destination/source is part of the Google network.
  final pulumi.Input<EdgeLocationResponse> destinationEgressLocation;
  /// The source and destination endpoints derived from the test input and used for active probing.
  final pulumi.Input<EndpointInfoResponse> endpointInfo;
  /// Details about an internal failure or the cancellation of active probing.
  final pulumi.Input<StatusResponse> error;
  /// Latency as measured by active probing in one direction: from the source to the destination endpoint.
  final pulumi.Input<LatencyDistributionResponse> probingLatency;
  /// The overall result of active probing.
  final pulumi.Input<String> result;
  /// Number of probes sent.
  final pulumi.Input<int> sentProbeCount;
  /// Number of probes that reached the destination.
  final pulumi.Input<int> successfulProbeCount;
  /// The time that reachability was assessed through active probing.
  final pulumi.Input<String> verifyTime;

  /// Creates a new [ProbingDetailsResponse].
  /// [abortCause] The reason probing was aborted.
  /// [destinationEgressLocation] The EdgeLocation from which a packet destined for/originating from the internet will egress/ingress the Google network. This will only be populated for a connectivity test which has an internet destination/source address. The absence of this field *must not* be used as an indication that the destination/source is part of the Google network.
  /// [endpointInfo] The source and destination endpoints derived from the test input and used for active probing.
  /// [error] Details about an internal failure or the cancellation of active probing.
  /// [probingLatency] Latency as measured by active probing in one direction: from the source to the destination endpoint.
  /// [result] The overall result of active probing.
  /// [sentProbeCount] Number of probes sent.
  /// [successfulProbeCount] Number of probes that reached the destination.
  /// [verifyTime] The time that reachability was assessed through active probing.
  ProbingDetailsResponse({
    required this.abortCause,
    required this.destinationEgressLocation,
    required this.endpointInfo,
    required this.error,
    required this.probingLatency,
    required this.result,
    required this.sentProbeCount,
    required this.successfulProbeCount,
    required this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortCause': abortCause,
      'destinationEgressLocation': pulumi.Input.mapInputValue<EdgeLocationResponse, Map<String, dynamic>>(destinationEgressLocation, (value) => value.toMap()),
      'endpointInfo': pulumi.Input.mapInputValue<EndpointInfoResponse, Map<String, dynamic>>(endpointInfo, (value) => value.toMap()),
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'probingLatency': pulumi.Input.mapInputValue<LatencyDistributionResponse, Map<String, dynamic>>(probingLatency, (value) => value.toMap()),
      'result': result,
      'sentProbeCount': sentProbeCount,
      'successfulProbeCount': successfulProbeCount,
      'verifyTime': verifyTime,
    };
  }

  factory ProbingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ProbingDetailsResponse(
      abortCause: (map['abortCause'] as String).input(),
      destinationEgressLocation: (EdgeLocationResponse.fromMap((map['destinationEgressLocation'] as Map).cast<String, dynamic>())).input(),
      endpointInfo: (EndpointInfoResponse.fromMap((map['endpointInfo'] as Map).cast<String, dynamic>())).input(),
      error: (StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      probingLatency: (LatencyDistributionResponse.fromMap((map['probingLatency'] as Map).cast<String, dynamic>())).input(),
      result: (map['result'] as String).input(),
      sentProbeCount: (map['sentProbeCount'] as int).input(),
      successfulProbeCount: (map['successfulProbeCount'] as int).input(),
      verifyTime: (map['verifyTime'] as String).input(),
    );
  }
}

