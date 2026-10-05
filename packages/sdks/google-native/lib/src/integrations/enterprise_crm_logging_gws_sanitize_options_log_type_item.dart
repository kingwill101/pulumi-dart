import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem implements pulumi.PulumiEnum<String> {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  gws("GWS"),
  gts("GTS"),
  all("ALL");

  const EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem value: $value');
  }
}
