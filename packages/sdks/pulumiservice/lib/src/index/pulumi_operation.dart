enum PulumiOperation {
  valueUpdate("update"),
  valuePreview("preview"),
  valueRefresh("refresh"),
  valueDestroy("destroy");

  const PulumiOperation(this.wireValue);
  final String wireValue;

  static PulumiOperation fromValue(String value) {
    for (final item in PulumiOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PulumiOperation value: $value');
  }
}

