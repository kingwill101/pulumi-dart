// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_sku_group_condition.dart';

/// Represents the various repricing conditions you can use for a conditional override.
class GoogleCloudChannelV1RepricingCondition {
  /// SKU Group condition for override.
  final pulumi.Input<GoogleCloudChannelV1SkuGroupCondition>? skuGroupCondition;

  /// Creates a new [GoogleCloudChannelV1RepricingCondition].
  /// [skuGroupCondition] SKU Group condition for override.
  GoogleCloudChannelV1RepricingCondition({
    this.skuGroupCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuGroupCondition': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1SkuGroupCondition, Map<String, dynamic>>(skuGroupCondition, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1RepricingCondition.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingCondition(
      skuGroupCondition: (() { final guardedValue = map['skuGroupCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudChannelV1SkuGroupCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

