import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. This field is unused.
enum BillingAccountSinkOutputVersionFormat implements pulumi.PulumiEnum<String> {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const BillingAccountSinkOutputVersionFormat(this.wireValue);
  @override
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
