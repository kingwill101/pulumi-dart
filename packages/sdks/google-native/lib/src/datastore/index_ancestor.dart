/// Required. The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
enum IndexAncestor {
  ancestorModeUnspecified("ANCESTOR_MODE_UNSPECIFIED"),
  none("NONE"),
  allAncestors("ALL_ANCESTORS");

  const IndexAncestor(this.wireValue);
  final String wireValue;

  static IndexAncestor fromValue(String value) {
    for (final item in IndexAncestor.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexAncestor value: $value');
  }
}
