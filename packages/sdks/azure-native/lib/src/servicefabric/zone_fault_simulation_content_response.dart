// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fault_simulation_constraints_response.dart';

/// Parameters for Zone Fault Simulation action.
class ZoneFaultSimulationContentResponse {
  /// Constraints for Fault Simulation action.
  final pulumi.Input<FaultSimulationConstraintsResponse>? constraints;
  /// The kind of fault simulation.
  /// Expected value is 'Zone'.
  final pulumi.Input<String> faultKind;
  /// Force the action to go through without any check on the cluster.
  final pulumi.Input<bool>? force;
  /// Indicates the zones of the fault simulation.
  final pulumi.Input<List<String>>? zones;

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
      'constraints': ?pulumi.Input.mapOptionalInputValue<FaultSimulationConstraintsResponse, Map<String, dynamic>>(constraints, (value) => value.toMap()),
      'faultKind': faultKind,
      'force': ?force,
      'zones': ?zones,
    };
  }

  factory ZoneFaultSimulationContentResponse.fromMap(Map<String, dynamic> map) {
    return ZoneFaultSimulationContentResponse(
      constraints: map['constraints'] == null ? null : (FaultSimulationConstraintsResponse.fromMap((map['constraints']! as Map).cast<String, dynamic>())).input(),
      faultKind: (map['faultKind'] as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

