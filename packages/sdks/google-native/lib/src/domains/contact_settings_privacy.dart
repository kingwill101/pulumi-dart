/// Required. Privacy setting for the contacts associated with the `Registration`.
enum ContactSettingsPrivacy {
  contactPrivacyUnspecified("CONTACT_PRIVACY_UNSPECIFIED"),
  publicContactData("PUBLIC_CONTACT_DATA"),
  privateContactData("PRIVATE_CONTACT_DATA"),
  redactedContactData("REDACTED_CONTACT_DATA");

  const ContactSettingsPrivacy(this.wireValue);
  final String wireValue;

  static ContactSettingsPrivacy fromValue(String value) {
    for (final item in ContactSettingsPrivacy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContactSettingsPrivacy value: $value');
  }
}

