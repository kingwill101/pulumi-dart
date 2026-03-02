// ignore_for_file: unused_element, unnecessary_cast

import 'fault_simulation_details_response.dart';

/// Result data returned by getNodeTypeFaultSimulation.
class GetNodeTypeFaultSimulationResult {
  /// Fault simulation details
  final FaultSimulationDetailsResponse? details;
  /// The end time of the fault simulation.
  final String? endTime;
  /// unique identifier for the fault simulation.
  final String? simulationId;
  /// The start time of the fault simulation.
  final String? startTime;
  /// Fault simulation status
  final String? status;

  /// Creates a new [GetNodeTypeFaultSimulationResult].
  /// [details] Fault simulation details
  /// [endTime] The end time of the fault simulation.
  /// [simulationId] unique identifier for the fault simulation.
  /// [startTime] The start time of the fault simulation.
  /// [status] Fault simulation status
  GetNodeTypeFaultSimulationResult({
    this.details,
    this.endTime,
    this.simulationId,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details == null ? null : details!.toMap(),
      'endTime': ?endTime,
      'simulationId': ?simulationId,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetNodeTypeFaultSimulationResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeFaultSimulationResult(
      details: map['details'] == null ? null : FaultSimulationDetailsResponse.fromMap((map['details']! as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime']! as String,
      simulationId: map['simulationId'] == null ? null : map['simulationId']! as String,
      startTime: map['startTime'] == null ? null : map['startTime']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

