import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU name
enum AzureSkuName implements pulumi.PulumiEnum<String> {
  valueS1("S1");

  const AzureSkuName(this.wireValue);
  @override
  final String wireValue;

  static AzureSkuName fromValue(String value) {
    for (final item in AzureSkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSkuName value: $value');
  }
}
