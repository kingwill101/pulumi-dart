enum GooglePrivacyDlpV2BigQueryOptionsSampleMethod {
  sampleMethodUnspecified("SAMPLE_METHOD_UNSPECIFIED"),
  top("TOP"),
  randomStart("RANDOM_START");

  const GooglePrivacyDlpV2BigQueryOptionsSampleMethod(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2BigQueryOptionsSampleMethod fromValue(String value) {
    for (final item in GooglePrivacyDlpV2BigQueryOptionsSampleMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2BigQueryOptionsSampleMethod value: $value');
  }
}

