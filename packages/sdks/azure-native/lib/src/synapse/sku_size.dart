import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU size.
enum SkuSize implements pulumi.PulumiEnum<String> {
  valueExtraSmall("Extra small"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SkuSize(this.wireValue);
  @override
  final String wireValue;

  static SkuSize fromValue(String value) {
    for (final item in SkuSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuSize value: $value');
  }
}
