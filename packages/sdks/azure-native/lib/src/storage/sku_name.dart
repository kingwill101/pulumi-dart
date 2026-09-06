import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU name. Required for account creation; optional for update. Note that in older versions, SKU name was called accountType.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueStandardLRS("Standard_LRS"),
  valueStandardGRS("Standard_GRS"),
  valueStandardRAGRS("Standard_RAGRS"),
  valueStandardZRS("Standard_ZRS"),
  valuePremiumLRS("Premium_LRS"),
  valuePremiumZRS("Premium_ZRS"),
  valueStandardGZRS("Standard_GZRS"),
  valueStandardRAGZRS("Standard_RAGZRS"),
  valueStandardV2LRS("StandardV2_LRS"),
  valueStandardV2GRS("StandardV2_GRS"),
  valueStandardV2ZRS("StandardV2_ZRS"),
  valueStandardV2GZRS("StandardV2_GZRS"),
  valuePremiumV2LRS("PremiumV2_LRS"),
  valuePremiumV2ZRS("PremiumV2_ZRS");

  const SkuName(this.wireValue);
  @override
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
