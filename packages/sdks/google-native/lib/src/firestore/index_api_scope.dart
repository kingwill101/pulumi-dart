/// The API scope supported by this index.
enum IndexApiScope {
  anyApi("ANY_API"),
  datastoreModeApi("DATASTORE_MODE_API");

  const IndexApiScope(this.wireValue);
  final String wireValue;

  static IndexApiScope fromValue(String value) {
    for (final item in IndexApiScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexApiScope value: $value');
  }
}
