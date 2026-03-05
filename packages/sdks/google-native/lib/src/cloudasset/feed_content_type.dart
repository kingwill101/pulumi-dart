/// Asset content type. If not specified, no content but the asset name and type will be returned.
enum FeedContentType {
  contentTypeUnspecified("CONTENT_TYPE_UNSPECIFIED"),
  resource("RESOURCE"),
  iamPolicy("IAM_POLICY"),
  orgPolicy("ORG_POLICY"),
  accessPolicy("ACCESS_POLICY"),
  osInventory("OS_INVENTORY"),
  relationship("RELATIONSHIP");

  const FeedContentType(this.wireValue);
  final String wireValue;

  static FeedContentType fromValue(String value) {
    for (final item in FeedContentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeedContentType value: $value');
  }
}

