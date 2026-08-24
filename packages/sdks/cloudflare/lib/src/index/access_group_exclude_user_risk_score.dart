// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeUserRiskScore {
  /// A list of risk score levels to match. Values can be low, medium, high, or unscored.
  final pulumi.Input<List<String>> userRiskScores;

  /// Creates a new [AccessGroupExcludeUserRiskScore].
  /// [userRiskScores] A list of risk score levels to match. Values can be low, medium, high, or unscored.
  const AccessGroupExcludeUserRiskScore({
    required this.userRiskScores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userRiskScores': userRiskScores,
    };
  }

  factory AccessGroupExcludeUserRiskScore.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeUserRiskScore(
      userRiskScores: pulumi.Input.fromValue((map['userRiskScores'] as List).cast<String>()),
    );
  }
}
