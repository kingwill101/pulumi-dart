/// Required. The WAF feature for which this key is enabled.
enum GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature {
  wafFeatureUnspecified("WAF_FEATURE_UNSPECIFIED"),
  challengePage("CHALLENGE_PAGE"),
  sessionToken("SESSION_TOKEN"),
  actionToken("ACTION_TOKEN"),
  express("EXPRESS");

  const GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature(this.value);
  final String value;

  static GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature fromValue(String value) {
    for (final item in GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRecaptchaenterpriseV1WafSettingsWafFeature value: $value');
  }
}

