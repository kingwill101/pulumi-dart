import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacyDomainsV1beta1 implements pulumi.PulumiEnum<String> {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacyDomainsV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ContactSettingsPrivacyDomainsV1beta1 fromValue(String value) {
    for (final item in ContactSettingsPrivacyDomainsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactSettingsPrivacyDomainsV1beta1 value: $value');
  }
}
