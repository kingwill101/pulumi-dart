// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fault_simulation_response.dart';

/// Result data returned by listNodeTypeFaultSimulation.
class ListNodeTypeFaultSimulationResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The FaultSimulation items on this page
  final List<FaultSimulationResponse>? value;

  /// Creates a new [ListNodeTypeFaultSimulationResult].
  /// [nextLink] The link to the next page of items
  /// [value] The FaultSimulation items on this page
  const ListNodeTypeFaultSimulationResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<FaultSimulationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListNodeTypeFaultSimulationResult.fromMap(Map<String, dynamic> map) {
    return ListNodeTypeFaultSimulationResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FaultSimulationResponse>(guardedValue, (value) => FaultSimulationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
