// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.
class GooglePrivacyDlpV2SensitivityScoreResponse {
  /// The sensitivity score applied to the resource.
  final pulumi.Input<String> score;

  /// Creates a new [GooglePrivacyDlpV2SensitivityScoreResponse].
  /// [score] The sensitivity score applied to the resource.
  const GooglePrivacyDlpV2SensitivityScoreResponse({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory GooglePrivacyDlpV2SensitivityScoreResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SensitivityScoreResponse(
      score: pulumi.Input.fromValue(map['score'] as String),
    );
  }
}

