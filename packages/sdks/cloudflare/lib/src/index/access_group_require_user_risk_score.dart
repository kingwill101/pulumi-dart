// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireUserRiskScore {
  /// A list of risk score levels to match. Values can be low, medium, high, or unscored.
  final pulumi.Input<List<String>> userRiskScores;

  /// Creates a new [AccessGroupRequireUserRiskScore].
  /// [userRiskScores] A list of risk score levels to match. Values can be low, medium, high, or unscored.
  const AccessGroupRequireUserRiskScore({
    required this.userRiskScores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userRiskScores': userRiskScores,
    };
  }

  factory AccessGroupRequireUserRiskScore.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireUserRiskScore(
      userRiskScores: pulumi.Input.fromValue((map['userRiskScores'] as List).cast<String>()),
    );
  }
}
