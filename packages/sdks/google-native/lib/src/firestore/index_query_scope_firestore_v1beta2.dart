/// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
enum IndexQueryScopeFirestoreV1beta2 {
  queryScopeUnspecified("QUERY_SCOPE_UNSPECIFIED"),
  collection("COLLECTION"),
  collectionGroup("COLLECTION_GROUP");

  const IndexQueryScopeFirestoreV1beta2(this.wireValue);
  final String wireValue;

  static IndexQueryScopeFirestoreV1beta2 fromValue(String value) {
    for (final item in IndexQueryScopeFirestoreV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexQueryScopeFirestoreV1beta2 value: $value');
  }
}

