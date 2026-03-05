/// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
enum IndexQueryScope {
  queryScopeUnspecified("QUERY_SCOPE_UNSPECIFIED"),
  collection("COLLECTION"),
  collectionGroup("COLLECTION_GROUP"),
  collectionRecursive("COLLECTION_RECURSIVE");

  const IndexQueryScope(this.wireValue);
  final String wireValue;

  static IndexQueryScope fromValue(String value) {
    for (final item in IndexQueryScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexQueryScope value: $value');
  }
}

