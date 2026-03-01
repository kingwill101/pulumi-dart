// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_conditional_override_rebilling_basis.dart';
import 'google_cloud_channel_v1_repricing_adjustment.dart';
import 'google_cloud_channel_v1_repricing_condition.dart';

/// Specifies the override to conditionally apply.
class GoogleCloudChannelV1ConditionalOverride {
  /// Information about the applied override's adjustment.
  final GoogleCloudChannelV1RepricingAdjustment adjustment;
  /// The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  final GoogleCloudChannelV1ConditionalOverrideRebillingBasis rebillingBasis;
  /// Specifies the condition which, if met, will apply the override.
  final GoogleCloudChannelV1RepricingCondition repricingCondition;

  /// Creates a new [GoogleCloudChannelV1ConditionalOverride].
  /// [adjustment] Information about the applied override's adjustment.
  /// [rebillingBasis] The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  /// [repricingCondition] Specifies the condition which, if met, will apply the override.
  GoogleCloudChannelV1ConditionalOverride({
    required this.adjustment,
    required this.rebillingBasis,
    required this.repricingCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment': adjustment.toMap(),
      'rebillingBasis': rebillingBasis.value,
      'repricingCondition': repricingCondition.toMap(),
    };
  }

  factory GoogleCloudChannelV1ConditionalOverride.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1ConditionalOverride(
      adjustment: GoogleCloudChannelV1RepricingAdjustment.fromMap((map['adjustment'] as Map).cast<String, dynamic>()),
      rebillingBasis: GoogleCloudChannelV1ConditionalOverrideRebillingBasis.fromValue(map['rebillingBasis'] as String),
      repricingCondition: GoogleCloudChannelV1RepricingCondition.fromMap((map['repricingCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

