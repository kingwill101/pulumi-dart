import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Describes how this key is integrated with the website.
enum GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType implements pulumi.PulumiEnum<String> {
  integrationTypeUnspecified("INTEGRATION_TYPE_UNSPECIFIED"),
  score("SCORE"),
  checkbox("CHECKBOX"),
  invisible("INVISIBLE");

  const GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType fromValue(String value) {
    for (final item in GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRecaptchaenterpriseV1WebKeySettingsIntegrationType value: $value');
  }
}
