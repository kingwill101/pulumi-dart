import 'package:pulumi/pulumi.dart' as pulumi;

enum RegistrationDomainNoticesItem implements pulumi.PulumiEnum<String> {
  domainNoticeUnspecified("DOMAIN_NOTICE_UNSPECIFIED"),
  hstsPreloaded("HSTS_PRELOADED");

  const RegistrationDomainNoticesItem(this.wireValue);
  @override
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
