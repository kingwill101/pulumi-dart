// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_conditional_override.dart';
import 'google_cloud_channel_v1_repricing_adjustment.dart';
import 'google_cloud_channel_v1_repricing_config_entitlement_granularity.dart';
import 'google_cloud_channel_v1_repricing_config_rebilling_basis.dart';
import 'google_type_date.dart';

/// Configuration for repricing a Google bill over a period of time.
class GoogleCloudChannelV1RepricingConfig {
  /// Information about the adjustment.
  final pulumi.Input<GoogleCloudChannelV1RepricingAdjustment> adjustment;
  /// Applies the repricing configuration at the channel partner level. Only ChannelPartnerRepricingConfig supports this value. Deprecated: This is no longer supported. Use RepricingConfig.entitlement_granularity instead.
  final pulumi.Input<Map<String, dynamic>>? channelPartnerGranularity;
  /// The conditional overrides to apply for this configuration. If you list multiple overrides, only the first valid override is used. If you don't list any overrides, the API uses the normal adjustment and rebilling basis.
  final pulumi.Input<List<GoogleCloudChannelV1ConditionalOverride>>? conditionalOverrides;
  /// The YearMonth when these adjustments activate. The Day field needs to be "0" since we only accept YearMonth repricing boundaries.
  final pulumi.Input<GoogleTypeDate> effectiveInvoiceMonth;
  /// Applies the repricing configuration at the entitlement level. Note: If a ChannelPartnerRepricingConfig using RepricingConfig.EntitlementGranularity becomes effective, then no existing or future RepricingConfig.ChannelPartnerGranularity will apply to the RepricingConfig.EntitlementGranularity.entitlement. This is the recommended value for both CustomerRepricingConfig and ChannelPartnerRepricingConfig.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfigEntitlementGranularity>? entitlementGranularity;
  /// The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfigRebillingBasis> rebillingBasis;

  /// Creates a new [GoogleCloudChannelV1RepricingConfig].
  /// [adjustment] Information about the adjustment.
  /// [channelPartnerGranularity] Applies the repricing configuration at the channel partner level. Only ChannelPartnerRepricingConfig supports this value. Deprecated: This is no longer supported. Use RepricingConfig.entitlement_granularity instead.
  /// [conditionalOverrides] The conditional overrides to apply for this configuration. If you list multiple overrides, only the first valid override is used. If you don't list any overrides, the API uses the normal adjustment and rebilling basis.
  /// [effectiveInvoiceMonth] The YearMonth when these adjustments activate. The Day field needs to be "0" since we only accept YearMonth repricing boundaries.
  /// [entitlementGranularity] Applies the repricing configuration at the entitlement level. Note: If a ChannelPartnerRepricingConfig using RepricingConfig.EntitlementGranularity becomes effective, then no existing or future RepricingConfig.ChannelPartnerGranularity will apply to the RepricingConfig.EntitlementGranularity.entitlement. This is the recommended value for both CustomerRepricingConfig and ChannelPartnerRepricingConfig.
  /// [rebillingBasis] The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.
  GoogleCloudChannelV1RepricingConfig({
    required this.adjustment,
    this.channelPartnerGranularity,
    this.conditionalOverrides,
    required this.effectiveInvoiceMonth,
    this.entitlementGranularity,
    required this.rebillingBasis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustment': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingAdjustment, Map<String, dynamic>>(adjustment, (value) => value.toMap()),
      'channelPartnerGranularity': ?channelPartnerGranularity,
      'conditionalOverrides': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudChannelV1ConditionalOverride>, List<Map<String, dynamic>>>(conditionalOverrides, (value) => pulumi.Input.encodeList<GoogleCloudChannelV1ConditionalOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveInvoiceMonth': pulumi.Input.mapInputValue<GoogleTypeDate, Map<String, dynamic>>(effectiveInvoiceMonth, (value) => value.toMap()),
      'entitlementGranularity': ?pulumi.Input.mapOptionalInputValue<GoogleCloudChannelV1RepricingConfigEntitlementGranularity, Map<String, dynamic>>(entitlementGranularity, (value) => value.toMap()),
      'rebillingBasis': pulumi.Input.mapInputValue<GoogleCloudChannelV1RepricingConfigRebillingBasis, String>(rebillingBasis, (value) => value.value),
    };
  }

  factory GoogleCloudChannelV1RepricingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudChannelV1RepricingConfig(
      adjustment: (GoogleCloudChannelV1RepricingAdjustment.fromMap((map['adjustment'] as Map).cast<String, dynamic>())).input(),
      channelPartnerGranularity: map['channelPartnerGranularity'] == null ? null : ((map['channelPartnerGranularity']! as Map).cast<String, dynamic>()).input(),
      conditionalOverrides: map['conditionalOverrides'] == null ? null : (pulumi.Input.decodeList<GoogleCloudChannelV1ConditionalOverride>(map['conditionalOverrides']!, (value) => GoogleCloudChannelV1ConditionalOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      effectiveInvoiceMonth: (GoogleTypeDate.fromMap((map['effectiveInvoiceMonth'] as Map).cast<String, dynamic>())).input(),
      entitlementGranularity: map['entitlementGranularity'] == null ? null : (GoogleCloudChannelV1RepricingConfigEntitlementGranularity.fromMap((map['entitlementGranularity']! as Map).cast<String, dynamic>())).input(),
      rebillingBasis: (GoogleCloudChannelV1RepricingConfigRebillingBasis.fromValue(map['rebillingBasis'] as String)).input(),
    );
  }
}

