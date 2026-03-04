/// Required. The WAF service that uses this key.
enum GoogleCloudRecaptchaenterpriseV1WafSettingsWafService {
  wafServiceUnspecified("WAF_SERVICE_UNSPECIFIED"),
  ca("CA"),
  fastly("FASTLY");

  const GoogleCloudRecaptchaenterpriseV1WafSettingsWafService(this.wireValue);
  final String wireValue;

  static GoogleCloudRecaptchaenterpriseV1WafSettingsWafService fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudRecaptchaenterpriseV1WafSettingsWafService.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudRecaptchaenterpriseV1WafSettingsWafService value: $value',
    );
  }
}
