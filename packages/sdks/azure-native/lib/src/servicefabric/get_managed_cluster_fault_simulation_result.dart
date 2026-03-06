// ignore_for_file: unused_element, unnecessary_cast

import 'fault_simulation_details_response.dart';

/// Result data returned by getManagedClusterFaultSimulation.
class GetManagedClusterFaultSimulationResult {
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

  /// Creates a new [GetManagedClusterFaultSimulationResult].
  /// [details] Fault simulation details
  /// [endTime] The end time of the fault simulation.
  /// [simulationId] unique identifier for the fault simulation.
  /// [startTime] The start time of the fault simulation.
  /// [status] Fault simulation status
  const GetManagedClusterFaultSimulationResult({
    this.details,
    this.endTime,
    this.simulationId,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details?.toMap(),
      'endTime': ?endTime,
      'simulationId': ?simulationId,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetManagedClusterFaultSimulationResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterFaultSimulationResult(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return FaultSimulationDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      simulationId: (() { final guardedValue = map['simulationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

