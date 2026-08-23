/// The minimum data risk score that triggers the condition.
enum GooglePrivacyDlpV2PubSubConditionMinimumRiskScore {
  profileScoreBucketUnspecified("PROFILE_SCORE_BUCKET_UNSPECIFIED"),
  high("HIGH"),
  mediumOrHigh("MEDIUM_OR_HIGH");

  const GooglePrivacyDlpV2PubSubConditionMinimumRiskScore(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2PubSubConditionMinimumRiskScore fromValue(String value) {
    for (final item in GooglePrivacyDlpV2PubSubConditionMinimumRiskScore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2PubSubConditionMinimumRiskScore value: $value');
  }
}
