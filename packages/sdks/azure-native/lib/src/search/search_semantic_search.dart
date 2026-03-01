/// Sets options that control the availability of semantic search. This configuration is only possible for certain Azure AI Search SKUs in certain locations.
enum SearchSemanticSearch {
  disabled("disabled"),
  free("free"),
  standard("standard");

  const SearchSemanticSearch(this.value);
  final String value;

  static SearchSemanticSearch fromValue(String value) {
    for (final item in SearchSemanticSearch.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchSemanticSearch value: $value');
  }
}

