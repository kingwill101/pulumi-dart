// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines machines types and a rank to which the machines types belong.
class InstanceSelectionResponse {
  /// Optional. Full machine-type names, e.g. "n1-standard-16".
  final pulumi.Input<List<String>> machineTypes;
  /// Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final pulumi.Input<int> rank;

  /// Creates a new [InstanceSelectionResponse].
  /// [machineTypes] Optional. Full machine-type names, e.g. "n1-standard-16".
  /// [rank] Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  const InstanceSelectionResponse({
    required this.machineTypes,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineTypes': machineTypes,
      'rank': rank,
    };
  }

  factory InstanceSelectionResponse.fromMap(Map<String, dynamic> map) {
    return InstanceSelectionResponse(
      machineTypes: pulumi.Input.fromValue((map['machineTypes'] as List).cast<String>()),
      rank: pulumi.Input.fromValue(map['rank'] as int),
    );
  }
}

