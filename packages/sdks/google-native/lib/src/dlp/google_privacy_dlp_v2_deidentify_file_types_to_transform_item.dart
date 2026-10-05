import 'package:pulumi/pulumi.dart' as pulumi;

enum GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem implements pulumi.PulumiEnum<String> {
  fileTypeUnspecified("FILE_TYPE_UNSPECIFIED"),
  binaryFile("BINARY_FILE"),
  textFile("TEXT_FILE"),
  image("IMAGE"),
  word("WORD"),
  pdf("PDF"),
  avro("AVRO"),
  csv("CSV"),
  tsv("TSV"),
  powerpoint("POWERPOINT"),
  excel("EXCEL");

  const GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2DeidentifyFileTypesToTransformItem value: $value');
  }
}
