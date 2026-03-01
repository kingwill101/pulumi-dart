enum RegistrationDomainNoticesItem {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItem(this.value);
  final String value;

  static RegistrationDomainNoticesItem fromValue(String value) {
    for (final item in RegistrationDomainNoticesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationDomainNoticesItem value: $value');
  }
}

