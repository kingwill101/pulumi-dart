/// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
enum CustomDomainCertPreference {
  typeUnspecified("TYPE_UNSPECIFIED"),
  temporary("TEMPORARY"),
  grouped("GROUPED"),
  projectGrouped("PROJECT_GROUPED"),
  dedicated("DEDICATED");

  const CustomDomainCertPreference(this.wireValue);
  final String wireValue;

  static CustomDomainCertPreference fromValue(String value) {
    for (final item in CustomDomainCertPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomDomainCertPreference value: $value');
  }
}

