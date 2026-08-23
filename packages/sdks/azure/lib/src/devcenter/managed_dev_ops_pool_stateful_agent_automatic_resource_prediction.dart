// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction {
  /// Specifies the desired balance between cost and performance. Possible values are `MostCostEffective`, `MoreCostEffective`, `Balanced`, `MorePerformance`, and `BestPerformance`. Defaults to `Balanced`.
  final pulumi.Input<String>? predictionPreference;

  /// Creates a new [ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction].
  /// [predictionPreference] Specifies the desired balance between cost and performance. Possible values are `MostCostEffective`, `MoreCostEffective`, `Balanced`, `MorePerformance`, and `BestPerformance`. Defaults to `Balanced`.
  const ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction({
    this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predictionPreference': ?predictionPreference,
    };
  }

  factory ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction(
      predictionPreference: (() { final guardedValue = map['predictionPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
