// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fault_simulation_response.dart';

/// Result data returned by listManagedClusterFaultSimulation.
class ListManagedClusterFaultSimulationResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The FaultSimulation items on this page
  final List<FaultSimulationResponse> value;

  /// Creates a new [ListManagedClusterFaultSimulationResult].
  /// [nextLink] The link to the next page of items
  /// [value] The FaultSimulation items on this page
  ListManagedClusterFaultSimulationResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<FaultSimulationResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListManagedClusterFaultSimulationResult.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterFaultSimulationResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: pulumi.Input.decodeList<FaultSimulationResponse>(map['value'], (value) => FaultSimulationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

