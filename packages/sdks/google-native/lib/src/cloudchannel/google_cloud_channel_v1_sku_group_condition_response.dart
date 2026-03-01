// ignore_for_file: unused_element, unnecessary_cast


/// A condition that applies the override if a line item SKU is found in the SKU group.
class GoogleCloudChannelV1SkuGroupConditionResponse {
  /// Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource name of SKU group. Format: accounts/{account}/skuGroups/{sku_group}. Example: "accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
  final String skuGroup;

  /// Creates a new [GoogleCloudChannelV1SkuGroupConditionResponse].
  /// [skuGroup] Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource name of SKU group. Format: accounts/{account}/skuGroups/{sku_group}. Example: "accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
  GoogleCloudChannelV1SkuGroupConditionResponse({
    required this.skuGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuGroup': skuGroup,
    };
  }

  factory GoogleCloudChannelV1SkuGroupConditionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1SkuGroupConditionResponse(
      skuGroup: map['skuGroup'] as String,
    );
  }
}

