// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_sensitivity_score_score.dart';

/// Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.
class GooglePrivacyDlpV2SensitivityScore {
  /// The sensitivity score applied to the resource.
  final pulumi.Input<GooglePrivacyDlpV2SensitivityScoreScore>? score;

  /// Creates a new [GooglePrivacyDlpV2SensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  GooglePrivacyDlpV2SensitivityScore({
    this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2SensitivityScoreScore, String>(score, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2SensitivityScore.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SensitivityScore(
      score: (() { final guardedValue = map['score']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2SensitivityScoreScore.fromValue(guardedValue as String)); })(),
    );
  }
}

