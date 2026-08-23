enum RegistrationContactNoticesItem {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItem(this.wireValue);
  final String wireValue;

  static RegistrationContactNoticesItem fromValue(String value) {
    for (final item in RegistrationContactNoticesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationContactNoticesItem value: $value');
  }
}
