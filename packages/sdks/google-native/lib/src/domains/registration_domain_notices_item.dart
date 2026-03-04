enum RegistrationDomainNoticesItem {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItem(this.wireValue);
  final String wireValue;

  static RegistrationDomainNoticesItem fromValue(String value) {
    for (final item in RegistrationDomainNoticesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationDomainNoticesItem value: $value');
  }
}
