import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of paging
enum RestApiPollerRequestPagingKind implements pulumi.PulumiEnum<String> {
  valueLinkHeader("LinkHeader"),
  valueNextPageToken("NextPageToken"),
  valueNextPageUrl("NextPageUrl"),
  valuePersistentToken("PersistentToken"),
  valuePersistentLinkHeader("PersistentLinkHeader"),
  valueOffset("Offset"),
  valueCountBasedPaging("CountBasedPaging");

  const RestApiPollerRequestPagingKind(this.wireValue);
  @override
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
