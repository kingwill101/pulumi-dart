import 'package:pulumi/pulumi.dart' as pulumi;

enum EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy implements pulumi.PulumiEnum<String> {
  privacyTypeUnspecified("PRIVACY_TYPE_UNSPECIFIED"),
  notPii("NOT_PII"),
  pii("PII"),
  spii("SPII"),
  unsure("UNSURE");

  const EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy value: $value');
  }
}
