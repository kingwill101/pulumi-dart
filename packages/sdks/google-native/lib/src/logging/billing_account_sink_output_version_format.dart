/// Deprecated. This field is unused.
enum BillingAccountSinkOutputVersionFormat {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const BillingAccountSinkOutputVersionFormat(this.wireValue);
  final String wireValue;

  static BillingAccountSinkOutputVersionFormat fromValue(String value) {
    for (final item in BillingAccountSinkOutputVersionFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingAccountSinkOutputVersionFormat value: $value');
  }
}
