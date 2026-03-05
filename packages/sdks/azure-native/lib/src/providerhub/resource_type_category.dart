/// The category.
enum ResourceTypeCategory {
  none("None"),
  freeForm("FreeForm"),
  internal("Internal"),
  pureProxy("PureProxy");

  const ResourceTypeCategory(this.wireValue);
  final String wireValue;

  static ResourceTypeCategory fromValue(String value) {
    for (final item in ResourceTypeCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeCategory value: $value');
  }
}

