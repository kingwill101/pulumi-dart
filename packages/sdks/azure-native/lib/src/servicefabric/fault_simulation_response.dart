// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fault_simulation_details_response.dart';

/// Fault simulation object with status.
class FaultSimulationResponse {
  /// Fault simulation details
  final pulumi.Input<FaultSimulationDetailsResponse>? details;
  /// The end time of the fault simulation.
  final pulumi.Input<String>? endTime;
  /// unique identifier for the fault simulation.
  final pulumi.Input<String>? simulationId;
  /// The start time of the fault simulation.
  final pulumi.Input<String>? startTime;
  /// Fault simulation status
  final pulumi.Input<String>? status;

  /// Creates a new [FaultSimulationResponse].
  /// [details] Fault simulation details
  /// [endTime] The end time of the fault simulation.
  /// [simulationId] unique identifier for the fault simulation.
  /// [startTime] The start time of the fault simulation.
  /// [status] Fault simulation status
  FaultSimulationResponse({
    this.details,
    this.endTime,
    this.simulationId,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?pulumi.Input.mapOptionalInputValue<FaultSimulationDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'endTime': ?endTime,
      'simulationId': ?simulationId,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory FaultSimulationResponse.fromMap(Map<String, dynamic> map) {
    return FaultSimulationResponse(
      details: map['details'] == null ? null : (FaultSimulationDetailsResponse.fromMap((map['details']! as Map).cast<String, dynamic>())).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      simulationId: map['simulationId'] == null ? null : (map['simulationId']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

