// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutPlanWaveSelectorLocationSelector {
  /// Example: "us-central1-a"
  final pulumi.Input<List<String>>? includedLocations;

  /// Creates a new [RolloutPlanWaveSelectorLocationSelector].
  /// [includedLocations] Example: "us-central1-a"
  const RolloutPlanWaveSelectorLocationSelector({
    this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedLocations': ?includedLocations,
    };
  }

  factory RolloutPlanWaveSelectorLocationSelector.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveSelectorLocationSelector(
      includedLocations: (() { final guardedValue = map['includedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
