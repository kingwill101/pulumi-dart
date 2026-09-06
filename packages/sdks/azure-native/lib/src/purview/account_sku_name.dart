import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the sku name.
enum AccountSkuName implements pulumi.PulumiEnum<String> {
  standard("Standard"),
  free("Free");

  const AccountSkuName(this.wireValue);
  @override
  final String wireValue;

  static AccountSkuName fromValue(String value) {
    for (final item in AccountSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountSkuName value: $value');
  }
}
