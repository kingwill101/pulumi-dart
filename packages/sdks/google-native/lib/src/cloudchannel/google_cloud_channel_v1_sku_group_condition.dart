// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A condition that applies the override if a line item SKU is found in the SKU group.
class GoogleCloudChannelV1SkuGroupCondition {
  /// Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource name of SKU group. Format: accounts/{account}/skuGroups/{sku_group}. Example: "accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
  final pulumi.Input<String>? skuGroup;

  /// Creates a new [GoogleCloudChannelV1SkuGroupCondition].
  /// [skuGroup] Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource name of SKU group. Format: accounts/{account}/skuGroups/{sku_group}. Example: "accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041".
  const GoogleCloudChannelV1SkuGroupCondition({
    this.skuGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuGroup': ?skuGroup,
    };
  }

  factory GoogleCloudChannelV1SkuGroupCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1SkuGroupCondition(
      skuGroup: (() { final guardedValue = map['skuGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

