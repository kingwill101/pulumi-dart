enum NfsExportOptionsSecurityFlavorsItem {
  securityFlavorUnspecified("SECURITY_FLAVOR_UNSPECIFIED"),
  authSys("AUTH_SYS"),
  krb5("KRB5"),
  krb5i("KRB5I"),
  krb5p("KRB5P");

  const NfsExportOptionsSecurityFlavorsItem(this.wireValue);
  final String wireValue;

  static NfsExportOptionsSecurityFlavorsItem fromValue(String value) {
    for (final item in NfsExportOptionsSecurityFlavorsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsExportOptionsSecurityFlavorsItem value: $value');
  }
}
