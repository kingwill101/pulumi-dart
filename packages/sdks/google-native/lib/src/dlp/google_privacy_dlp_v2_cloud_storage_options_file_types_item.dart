enum GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem {
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

  const GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem value: $value');
  }
}

