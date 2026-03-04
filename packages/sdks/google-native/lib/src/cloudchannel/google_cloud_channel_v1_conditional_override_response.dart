// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_adjustment_response.dart';
import 'google_cloud_channel_v1_repricing_condition_response.dart';

/// Specifies the override to conditionally apply.
class GoogleCloudChannelV1ConditionalOverrideResponse {
  /// Information about the applied override's adjustment.
  final pulumi.Input<GoogleCloudChannelV1RepricingAdjustmentResponse>
  adjustment;

  /// The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  final pulumi.Input<String> rebillingBasis;

  /// Specifies the condition which, if met, will apply the override.
  final pulumi.Input<GoogleCloudChannelV1RepricingConditionResponse>
  repricingCondition;

  /// Creates a new [GoogleCloudChannelV1ConditionalOverrideResponse].
  /// [adjustment] Information about the applied override's adjustment.
  /// [rebillingBasis] The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.
  /// [repricingCondition] Specifies the condition which, if met, will apply the override.
  GoogleCloudChannelV1ConditionalOverrideResponse({
    required this.adjustment,
    required this.rebillingBasis,
    required this.repricingCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment':
          pulumi.Input.mapInputValue<
            GoogleCloudChannelV1RepricingAdjustmentResponse,
            Map<String, dynamic>
          >(adjustment, (value) => value.toMap()),
      'rebillingBasis': rebillingBasis,
      'repricingCondition':
          pulumi.Input.mapInputValue<
            GoogleCloudChannelV1RepricingConditionResponse,
            Map<String, dynamic>
          >(repricingCondition, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1ConditionalOverrideResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1ConditionalOverrideResponse(
      adjustment: pulumi.Input.fromValue(
        GoogleCloudChannelV1RepricingAdjustmentResponse.fromMap(
          (map['adjustment']! as Map).cast<String, dynamic>(),
        ),
      ),
      rebillingBasis: pulumi.Input.fromValue(map['rebillingBasis'] as String),
      repricingCondition: pulumi.Input.fromValue(
        GoogleCloudChannelV1RepricingConditionResponse.fromMap(
          (map['repricingCondition']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
