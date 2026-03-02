// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`, `SENSITIVITY_UNKNOWN`.
  final pulumi.Input<String> score;

  /// Creates a new [PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionTagResourcesTagConditionSensitivityScore(
      score: (map['score'] as String).input(),
    );
  }
}

