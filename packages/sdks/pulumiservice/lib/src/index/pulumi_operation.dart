enum PulumiOperation {
  update("update"),
  preview("preview"),
  refresh("refresh"),
  destroy("destroy");

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
