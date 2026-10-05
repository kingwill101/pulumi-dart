import 'package:pulumi/pulumi.dart' as pulumi;

enum GooglePrivacyDlpV2CloudStorageOptionsSampleMethod implements pulumi.PulumiEnum<String> {
  sampleMethodUnspecified("SAMPLE_METHOD_UNSPECIFIED"),
  top("TOP"),
  randomStart("RANDOM_START");

  const GooglePrivacyDlpV2CloudStorageOptionsSampleMethod(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2CloudStorageOptionsSampleMethod fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CloudStorageOptionsSampleMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CloudStorageOptionsSampleMethod value: $value');
  }
}
