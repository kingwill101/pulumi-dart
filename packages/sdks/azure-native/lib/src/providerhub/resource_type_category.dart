import 'package:pulumi/pulumi.dart' as pulumi;

/// The category.
enum ResourceTypeCategory implements pulumi.PulumiEnum<String> {
  none("None"),
  freeForm("FreeForm"),
  internal("Internal"),
  pureProxy("PureProxy");

  const ResourceTypeCategory(this.wireValue);
  @override
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
