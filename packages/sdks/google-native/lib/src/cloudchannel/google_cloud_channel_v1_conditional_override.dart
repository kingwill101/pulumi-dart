// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_conditional_override_rebilling_basis.dart';
import 'google_cloud_channel_v1_repricing_adjustment.dart';
import 'google_cloud_channel_v1_repricing_condition.dart';

/// Specifies the override to conditionally apply.
class GoogleCloudChannelV1ConditionalOverride {
  /// Information about the applied override's adjustment.
  final pulumi.Input<GoogleCloudChannelV1RepricingAdjustment> adjustment;
  /// The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  final pulumi.Input<GoogleCloudChannelV1ConditionalOverrideRebillingBasis> rebillingBasis;
  /// Specifies the condition which, if met, will apply the override.
  final pulumi.Input<GoogleCloudChannelV1RepricingCondition> repricingCondition;

  /// Creates a new [GoogleCloudChannelV1ConditionalOverride].
  /// [adjustment] Information about the applied override's adjustment.
  /// [rebillingBasis] The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  /// [repricingCondition] Specifies the condition which, if met, will apply the override.
  const GoogleCloudChannelV1ConditionalOverride({
    required this.adjustment,
    required this.rebillingBasis,
    required this.repricingCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingAdjustment, Map<String, dynamic>>(adjustment, (value) => value.toMap()),
      'rebillingBasis': pulumi.Input.mapInputValue<GoogleCloudChannelV1ConditionalOverrideRebillingBasis, String>(rebillingBasis, (value) => value.wireValue),
      'repricingCondition': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingCondition, Map<String, dynamic>>(repricingCondition, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1ConditionalOverride.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ConditionalOverride(
      adjustment: pulumi.Input.fromValue(GoogleCloudChannelV1RepricingAdjustment.fromMap((map['adjustment']! as Map).cast<String, dynamic>())),
      rebillingBasis: pulumi.Input.fromValue(GoogleCloudChannelV1ConditionalOverrideRebillingBasis.fromValue(map['rebillingBasis']! as String)),
      repricingCondition: pulumi.Input.fromValue(GoogleCloudChannelV1RepricingCondition.fromMap((map['repricingCondition']! as Map).cast<String, dynamic>())),
    );
  }
}

