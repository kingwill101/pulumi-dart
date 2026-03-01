// ignore_for_file: unused_element, unnecessary_cast

import 'fault_simulation_constraints_response.dart';

/// Parameters for Zone Fault Simulation action.
class ZoneFaultSimulationContentResponse {
  /// Constraints for Fault Simulation action.
  final FaultSimulationConstraintsResponse? constraints;
  /// The kind of fault simulation.
  /// Expected value is 'Zone'.
  final String faultKind;
  /// Force the action to go through without any check on the cluster.
  final bool? force;
  /// Indicates the zones of the fault simulation.
  final List<String>? zones;

  /// Creates a new [ZoneFaultSimulationContentResponse].
  /// [constraints] Constraints for Fault Simulation action.
  /// [faultKind] The kind of fault simulation.
  /// [force] Force the action to go through without any check on the cluster.
  /// [zones] Indicates the zones of the fault simulation.
  ZoneFaultSimulationContentResponse({
    this.constraints,
    required this.faultKind,
    this.force,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': ?constraints == null ? null : constraints!.toMap(),
      'faultKind': faultKind,
      'force': ?force,
      'zones': ?zones,
    };
  }

  factory ZoneFaultSimulationContentResponse.fromMap(Map<String, dynamic> map) {
    return ZoneFaultSimulationContentResponse(
      constraints: map['constraints'] == null ? null : FaultSimulationConstraintsResponse.fromMap((map['constraints'] as Map).cast<String, dynamic>()),
      faultKind: map['faultKind'] as String,
      force: map['force'] == null ? null : map['force'] as bool,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

