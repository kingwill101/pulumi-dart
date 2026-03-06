// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_type_fault_simulation_response.dart';
import 'zone_fault_simulation_content_response.dart';

/// Details for Fault Simulation.
class FaultSimulationDetailsResponse {
  /// unique identifier for the cluster resource.
  final pulumi.Input<String>? clusterId;
  /// List of node type simulations associated with the cluster fault simulation.
  final pulumi.Input<List<NodeTypeFaultSimulationResponse>>? nodeTypeFaultSimulation;
  /// unique identifier for the operation associated with the fault simulation.
  final pulumi.Input<String>? operationId;
  /// Fault simulation parameters.
  final pulumi.Input<ZoneFaultSimulationContentResponse>? parameters;

  /// Creates a new [FaultSimulationDetailsResponse].
  /// [clusterId] unique identifier for the cluster resource.
  /// [nodeTypeFaultSimulation] List of node type simulations associated with the cluster fault simulation.
  /// [operationId] unique identifier for the operation associated with the fault simulation.
  /// [parameters] Fault simulation parameters.
  const FaultSimulationDetailsResponse({
    this.clusterId,
    this.nodeTypeFaultSimulation,
    this.operationId,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'nodeTypeFaultSimulation': ?pulumi.Input.mapOptionalInputValue<List<NodeTypeFaultSimulationResponse>, List<Map<String, dynamic>>>(nodeTypeFaultSimulation, (value) => pulumi.Input.encodeList<NodeTypeFaultSimulationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operationId': ?operationId,
      'parameters': ?pulumi.Input.mapOptionalInputValue<ZoneFaultSimulationContentResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory FaultSimulationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return FaultSimulationDetailsResponse(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypeFaultSimulation: (() { final guardedValue = map['nodeTypeFaultSimulation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeTypeFaultSimulationResponse>(guardedValue, (value) => NodeTypeFaultSimulationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneFaultSimulationContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

