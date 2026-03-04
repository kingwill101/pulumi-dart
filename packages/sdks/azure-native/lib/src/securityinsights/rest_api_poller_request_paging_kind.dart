/// Type of paging
enum RestApiPollerRequestPagingKind {
  valueLinkHeader("LinkHeader"),
  valueNextPageToken("NextPageToken"),
  valueNextPageUrl("NextPageUrl"),
  valuePersistentToken("PersistentToken"),
  valuePersistentLinkHeader("PersistentLinkHeader"),
  valueOffset("Offset"),
  valueCountBasedPaging("CountBasedPaging");

  const RestApiPollerRequestPagingKind(this.wireValue);
  final String wireValue;

  static RestApiPollerRequestPagingKind fromValue(String value) {
    for (final item in RestApiPollerRequestPagingKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestApiPollerRequestPagingKind value: $value');
  }
}
