import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the availability and billing plan for semantic search on the Azure AI Search service. This configuration is only available for certain pricing tiers in certain regions.
enum SearchSemanticSearch implements pulumi.PulumiEnum<String> {
  disabled("disabled"),
  free("free"),
  standard("standard");

  const SearchSemanticSearch(this.wireValue);
  @override
  final String wireValue;

  static SearchSemanticSearch fromValue(String value) {
    for (final item in SearchSemanticSearch.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SearchSemanticSearch value: $value');
  }
}
