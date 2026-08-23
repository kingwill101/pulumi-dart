/// The minimum sensitivity level that triggers the condition.
enum GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore {
  profileScoreBucketUnspecified("PROFILE_SCORE_BUCKET_UNSPECIFIED"),
  high("HIGH"),
  mediumOrHigh("MEDIUM_OR_HIGH");

  const GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore fromValue(String value) {
    for (final item in GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore value: $value');
  }
}
