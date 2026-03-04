// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_info_response.dart';
import 'step_response.dart';

/// Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```
class TraceResponse {
  /// Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.
  final pulumi.Input<EndpointInfoResponse> endpointInfo;

  /// A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.
  final pulumi.Input<List<StepResponse>> steps;

  /// Creates a new [TraceResponse].
  /// [endpointInfo] Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.
  /// [steps] A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.
  TraceResponse({required this.endpointInfo, required this.steps});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointInfo':
          pulumi.Input.mapInputValue<
            EndpointInfoResponse,
            Map<String, dynamic>
          >(endpointInfo, (value) => value.toMap()),
      'steps':
          pulumi.Input.mapInputValue<
            List<StepResponse>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory TraceResponse.fromMap(Map<String, dynamic> map) {
    return TraceResponse(
      endpointInfo: pulumi.Input.fromValue(
        EndpointInfoResponse.fromMap(
          (map['endpointInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<StepResponse>(
          map['steps']!,
          (value) =>
              StepResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
