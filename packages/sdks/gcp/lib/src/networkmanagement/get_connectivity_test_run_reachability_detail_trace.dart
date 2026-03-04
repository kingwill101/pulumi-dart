// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_run_reachability_detail_trace_endpoint_info.dart';
import 'get_connectivity_test_run_reachability_detail_trace_step.dart';

class GetConnectivityTestRunReachabilityDetailTrace {
  /// (Output)
  /// Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model.
  /// Structure is documented below.
  final pulumi.Input<
    List<GetConnectivityTestRunReachabilityDetailTraceEndpointInfo>
  >
  endpointInfos;

  /// (Output)
  /// ID of the trace.
  final pulumi.Input<int> forwardTraceId;

  /// (Output)
  /// A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted).
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestRunReachabilityDetailTraceStep>>
  steps;

  /// Creates a new [GetConnectivityTestRunReachabilityDetailTrace].
  /// [endpointInfos] (Output)
  /// [forwardTraceId] (Output)
  /// [steps] (Output)
  GetConnectivityTestRunReachabilityDetailTrace({
    required this.endpointInfos,
    required this.forwardTraceId,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInfos':
          pulumi.Input.mapInputValue<
            List<GetConnectivityTestRunReachabilityDetailTraceEndpointInfo>,
            List<Map<String, dynamic>>
          >(
            endpointInfos,
            (value) =>
                pulumi.Input.encodeList<
                  GetConnectivityTestRunReachabilityDetailTraceEndpointInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'forwardTraceId': forwardTraceId,
      'steps':
          pulumi.Input.mapInputValue<
            List<GetConnectivityTestRunReachabilityDetailTraceStep>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<
                  GetConnectivityTestRunReachabilityDetailTraceStep,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetConnectivityTestRunReachabilityDetailTrace.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectivityTestRunReachabilityDetailTrace(
      endpointInfos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetConnectivityTestRunReachabilityDetailTraceEndpointInfo
        >(
          map['endpointInfos']!,
          (value) =>
              GetConnectivityTestRunReachabilityDetailTraceEndpointInfo.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      forwardTraceId: pulumi.Input.fromValue(map['forwardTraceId'] as int),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetConnectivityTestRunReachabilityDetailTraceStep
        >(
          map['steps']!,
          (value) => GetConnectivityTestRunReachabilityDetailTraceStep.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
