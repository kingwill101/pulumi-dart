// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction {
  /// The desired balance between cost and performance.
  final pulumi.Input<String> predictionPreference;

  /// Creates a new [GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction].
  /// [predictionPreference] The desired balance between cost and performance.
  const GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction({
    required this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predictionPreference': predictionPreference,
    };
  }

  factory GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatefulAgentAutomaticResourcePrediction(
      predictionPreference: pulumi.Input.fromValue(map['predictionPreference'] as String),
    );
  }
}
