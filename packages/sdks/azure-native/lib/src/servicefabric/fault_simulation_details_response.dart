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
  FaultSimulationDetailsResponse({
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
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      nodeTypeFaultSimulation: map['nodeTypeFaultSimulation'] == null ? null : (pulumi.Input.decodeList<NodeTypeFaultSimulationResponse>(map['nodeTypeFaultSimulation']!, (value) => NodeTypeFaultSimulationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operationId: map['operationId'] == null ? null : (map['operationId']! as String).input(),
      parameters: map['parameters'] == null ? null : (ZoneFaultSimulationContentResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

