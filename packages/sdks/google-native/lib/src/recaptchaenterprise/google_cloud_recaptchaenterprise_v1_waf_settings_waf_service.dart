import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The WAF service that uses this key.
enum GoogleCloudRecaptchaenterpriseV1WafSettingsWafService implements pulumi.PulumiEnum<String> {
  wafServiceUnspecified("WAF_SERVICE_UNSPECIFIED"),
  ca("CA"),
  fastly("FASTLY");

  const GoogleCloudRecaptchaenterpriseV1WafSettingsWafService(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRecaptchaenterpriseV1WafSettingsWafService fromValue(String value) {
    for (final item in GoogleCloudRecaptchaenterpriseV1WafSettingsWafService.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRecaptchaenterpriseV1WafSettingsWafService value: $value');
  }
}
