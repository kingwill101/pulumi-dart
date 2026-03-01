/// The value indicating whether the metadata is required or not
enum DaprMetadataRequired {
  valueTrue("true"),
  valueFalse("false");

  const DaprMetadataRequired(this.value);
  final String value;

  static DaprMetadataRequired fromValue(String value) {
    for (final item in DaprMetadataRequired.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DaprMetadataRequired value: $value');
  }
}

