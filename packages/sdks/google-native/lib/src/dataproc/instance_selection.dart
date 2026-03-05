// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines machines types and a rank to which the machines types belong.
class InstanceSelection {
  /// Optional. Full machine-type names, e.g. "n1-standard-16".
  final pulumi.Input<List<String>>? machineTypes;
  /// Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final pulumi.Input<int>? rank;

  /// Creates a new [InstanceSelection].
  /// [machineTypes] Optional. Full machine-type names, e.g. "n1-standard-16".
  /// [rank] Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  InstanceSelection({
    this.machineTypes,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineTypes': ?machineTypes,
      'rank': ?rank,
    };
  }

  factory InstanceSelection.fromMap(Map<String, dynamic> map) {
    return InstanceSelection(
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

