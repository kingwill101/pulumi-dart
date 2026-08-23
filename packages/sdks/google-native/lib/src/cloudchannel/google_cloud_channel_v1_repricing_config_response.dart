// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_conditional_override_response.dart';
import 'google_cloud_channel_v1_repricing_adjustment_response.dart';
import 'google_cloud_channel_v1_repricing_config_entitlement_granularity_response.dart';
import 'google_type_date_response.dart';

/// Configuration for repricing a Google bill over a period of time.
class GoogleCloudChannelV1RepricingConfigResponse {
  /// Information about the adjustment.
  final pulumi.Input<GoogleCloudChannelV1RepricingAdjustmentResponse> adjustment;
  /// Applies the repricing configuration at the channel partner level. Only ChannelPartnerRepricingConfig supports this value. Deprecated: This is no longer supported. Use RepricingConfig.entitlement_granularity instead.
  final pulumi.Input<Map<String, dynamic>> channelPartnerGranularity;
  /// The conditional overrides to apply for this configuration. If you list multiple overrides, only the first valid override is used. If you don't list any overrides, the API uses the normal adjustment and rebilling basis.
  final pulumi.Input<List<GoogleCloudChannelV1ConditionalOverrideResponse>> conditionalOverrides;
  /// The YearMonth when these adjustments activate. The Day field needs to be "0" since we only accept YearMonth repricing boundaries.
  final pulumi.Input<GoogleTypeDateResponse> effectiveInvoiceMonth;
  /// Applies the repricing configuration at the entitlement level. Note: If a ChannelPartnerRepricingConfig using RepricingConfig.EntitlementGranularity becomes effective, then no existing or future RepricingConfig.ChannelPartnerGranularity will apply to the RepricingConfig.EntitlementGranularity.entitlement. This is the recommended value for both CustomerRepricingConfig and ChannelPartnerRepricingConfig.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse> entitlementGranularity;
  /// The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.
  final pulumi.Input<String> rebillingBasis;

  /// Creates a new [GoogleCloudChannelV1RepricingConfigResponse].
  /// [adjustment] Information about the adjustment.
  /// [channelPartnerGranularity] Applies the repricing configuration at the channel partner level. Only ChannelPartnerRepricingConfig supports this value. Deprecated: This is no longer supported. Use RepricingConfig.entitlement_granularity instead.
  /// [conditionalOverrides] The conditional overrides to apply for this configuration. If you list multiple overrides, only the first valid override is used. If you don't list any overrides, the API uses the normal adjustment and rebilling basis.
  /// [effectiveInvoiceMonth] The YearMonth when these adjustments activate. The Day field needs to be "0" since we only accept YearMonth repricing boundaries.
  /// [entitlementGranularity] Applies the repricing configuration at the entitlement level. Note: If a ChannelPartnerRepricingConfig using RepricingConfig.EntitlementGranularity becomes effective, then no existing or future RepricingConfig.ChannelPartnerGranularity will apply to the RepricingConfig.EntitlementGranularity.entitlement. This is the recommended value for both CustomerRepricingConfig and ChannelPartnerRepricingConfig.
  /// [rebillingBasis] The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.
  const GoogleCloudChannelV1RepricingConfigResponse({
    required this.adjustment,
    required this.channelPartnerGranularity,
    required this.conditionalOverrides,
    required this.effectiveInvoiceMonth,
    required this.entitlementGranularity,
    required this.rebillingBasis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingAdjustmentResponse, Map<String, dynamic>>(adjustment, (value) => value.toMap()),
      'channelPartnerGranularity': channelPartnerGranularity,
      'conditionalOverrides': pulumi.Input.mapInputValue<List<GoogleCloudChannelV1ConditionalOverrideResponse>, List<Map<String, dynamic>>>(conditionalOverrides, (value) => pulumi.Input.encodeList<GoogleCloudChannelV1ConditionalOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveInvoiceMonth': pulumi.Input.mapInputValue<GoogleTypeDateResponse, Map<String, dynamic>>(effectiveInvoiceMonth, (value) => value.toMap()),
      'entitlementGranularity': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse, Map<String, dynamic>>(entitlementGranularity, (value) => value.toMap()),
      'rebillingBasis': rebillingBasis,
    };
  }

  factory GoogleCloudChannelV1RepricingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConfigResponse(
      adjustment: pulumi.Input.fromValue(GoogleCloudChannelV1RepricingAdjustmentResponse.fromMap((map['adjustment']! as Map).cast<String, dynamic>())),
      channelPartnerGranularity: pulumi.Input.fromValue((map['channelPartnerGranularity']! as Map).cast<String, dynamic>()),
      conditionalOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudChannelV1ConditionalOverrideResponse>(map['conditionalOverrides']!, (value) => GoogleCloudChannelV1ConditionalOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveInvoiceMonth: pulumi.Input.fromValue(GoogleTypeDateResponse.fromMap((map['effectiveInvoiceMonth']! as Map).cast<String, dynamic>())),
      entitlementGranularity: pulumi.Input.fromValue(GoogleCloudChannelV1RepricingConfigEntitlementGranularityResponse.fromMap((map['entitlementGranularity']! as Map).cast<String, dynamic>())),
      rebillingBasis: pulumi.Input.fromValue(map['rebillingBasis'] as String),
    );
  }
}
