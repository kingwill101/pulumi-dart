/// The cloud that the standard is supported on.
enum StandardSupportedCloud {
  valueAzure("Azure"),
  valueAWS("AWS"),
  valueGCP("GCP");

  const StandardSupportedCloud(this.value);
  final String value;

  static StandardSupportedCloud fromValue(String value) {
    for (final item in StandardSupportedCloud.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSupportedCloud value: $value');
  }
}

