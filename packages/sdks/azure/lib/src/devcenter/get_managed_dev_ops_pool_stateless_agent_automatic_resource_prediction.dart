// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction {
  /// The desired balance between cost and performance.
  final pulumi.Input<String> predictionPreference;

  /// Creates a new [GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction].
  /// [predictionPreference] The desired balance between cost and performance.
  const GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction({
    required this.predictionPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predictionPreference': predictionPreference,
    };
  }

  factory GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolStatelessAgentAutomaticResourcePrediction(
      predictionPreference: pulumi.Input.fromValue(map['predictionPreference'] as String),
    );
  }
}
