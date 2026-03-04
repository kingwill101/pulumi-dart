enum RegistrationDomainNoticesItemDomainsV1alpha2 {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItemDomainsV1alpha2(this.wireValue);
  final String wireValue;

  static RegistrationDomainNoticesItemDomainsV1alpha2 fromValue(String value) {
    for (final item in RegistrationDomainNoticesItemDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegistrationDomainNoticesItemDomainsV1alpha2 value: $value',
    );
  }
}
