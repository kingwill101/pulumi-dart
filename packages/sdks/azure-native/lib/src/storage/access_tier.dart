import 'package:pulumi/pulumi.dart' as pulumi;

/// Required for storage accounts where kind = BlobStorage. The access tier is used for billing. The 'Premium' access tier is the default value for premium block blobs storage account type and it cannot be changed for the premium block blobs storage account type.
enum AccessTier implements pulumi.PulumiEnum<String> {
  valueHot("Hot"),
  valueCool("Cool"),
  valuePremium("Premium"),
  valueCold("Cold");

  const AccessTier(this.wireValue);
  @override
  final String wireValue;

  static AccessTier fromValue(String value) {
    for (final item in AccessTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessTier value: $value');
  }
}
