enum RegistrationContactNoticesItemDomainsV1alpha2 {
  contactNoticeUnspecified("CONTACT_NOTICE_UNSPECIFIED"),
  publicContactDataAcknowledgement("PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT");

  const RegistrationContactNoticesItemDomainsV1alpha2(this.wireValue);
  final String wireValue;

  static RegistrationContactNoticesItemDomainsV1alpha2 fromValue(String value) {
    for (final item in RegistrationContactNoticesItemDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationContactNoticesItemDomainsV1alpha2 value: $value');
  }
}

