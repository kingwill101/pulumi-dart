enum RegistrationDomainNoticesItemDomainsV1beta1 {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItemDomainsV1beta1(this.wireValue);
  final String wireValue;

  static RegistrationDomainNoticesItemDomainsV1beta1 fromValue(String value) {
    for (final item in RegistrationDomainNoticesItemDomainsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationDomainNoticesItemDomainsV1beta1 value: $value');
  }
}
