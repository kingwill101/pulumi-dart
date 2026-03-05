/// The sensitivity score applied to the resource.
enum GooglePrivacyDlpV2SensitivityScoreScore {
  sensitivityScoreUnspecified("SENSITIVITY_SCORE_UNSPECIFIED"),
  sensitivityLow("SENSITIVITY_LOW"),
  sensitivityModerate("SENSITIVITY_MODERATE"),
  sensitivityHigh("SENSITIVITY_HIGH");

  const GooglePrivacyDlpV2SensitivityScoreScore(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2SensitivityScoreScore fromValue(String value) {
    for (final item in GooglePrivacyDlpV2SensitivityScoreScore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2SensitivityScoreScore value: $value');
  }
}

