// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_type_fault_simulation_response.dart';
import 'zone_fault_simulation_content_response.dart';

/// Details for Fault Simulation.
class FaultSimulationDetailsResponse {
  /// unique identifier for the cluster resource.
  final String? clusterId;
  /// List of node type simulations associated with the cluster fault simulation.
  final List<NodeTypeFaultSimulationResponse>? nodeTypeFaultSimulation;
  /// unique identifier for the operation associated with the fault simulation.
  final String? operationId;
  /// Fault simulation parameters.
  final ZoneFaultSimulationContentResponse? parameters;

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
      'nodeTypeFaultSimulation': ?nodeTypeFaultSimulation == null ? null : pulumi.Input.encodeList<NodeTypeFaultSimulationResponse, Map<String, dynamic>>(nodeTypeFaultSimulation!, (value) => value.toMap()),
      'operationId': ?operationId,
      'parameters': ?parameters == null ? null : parameters!.toMap(),
    };
  }

  factory FaultSimulationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return FaultSimulationDetailsResponse(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      nodeTypeFaultSimulation: map['nodeTypeFaultSimulation'] == null ? null : pulumi.Input.decodeList<NodeTypeFaultSimulationResponse>(map['nodeTypeFaultSimulation'], (value) => NodeTypeFaultSimulationResponse.fromMap((value as Map).cast<String, dynamic>())),
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      parameters: map['parameters'] == null ? null : ZoneFaultSimulationContentResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

