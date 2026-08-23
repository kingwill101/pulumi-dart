// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_sku_group_condition_response.dart';

/// Represents the various repricing conditions you can use for a conditional override.
class GoogleCloudChannelV1RepricingConditionResponse {
  /// SKU Group condition for override.
  final pulumi.Input<GoogleCloudChannelV1SkuGroupConditionResponse> skuGroupCondition;

  /// Creates a new [GoogleCloudChannelV1RepricingConditionResponse].
  /// [skuGroupCondition] SKU Group condition for override.
  const GoogleCloudChannelV1RepricingConditionResponse({
    required this.skuGroupCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skuGroupCondition': pulumi.Input.mapInputValue<GoogleCloudChannelV1SkuGroupConditionResponse, Map<String, dynamic>>(skuGroupCondition, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1RepricingConditionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConditionResponse(
      skuGroupCondition: pulumi.Input.fromValue(GoogleCloudChannelV1SkuGroupConditionResponse.fromMap((map['skuGroupCondition']! as Map).cast<String, dynamic>())),
    );
  }
}
