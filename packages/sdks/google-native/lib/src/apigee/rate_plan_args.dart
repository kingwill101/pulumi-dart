// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_rate_range.dart';
import 'google_cloud_apigee_v1_revenue_share_range.dart';
import 'google_type_money.dart';
import 'rate_plan_billing_period.dart';
import 'rate_plan_consumption_pricing_type.dart';
import 'rate_plan_payment_funding_model.dart';
import 'rate_plan_revenue_share_type.dart';
import 'rate_plan_state.dart';

/// {@template pulumi_apigee_v1_rate_plan_args_doc}
/// The set of arguments for RatePlan.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_rate_plan_args_doc}
class RatePlanArgs {
  /// Name of the API product that the rate plan is associated with.
  final pulumi.Input<String>? apiproduct;
  final pulumi.Input<String> apiproductId;
  /// Frequency at which the customer will be billed.
  final pulumi.Input<RatePlanBillingPeriod>? billingPeriod;
  /// API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  final pulumi.Input<List<GoogleCloudApigeeV1RateRange>>? consumptionPricingRates;
  /// Pricing model used for consumption-based charges.
  final pulumi.Input<RatePlanConsumptionPricingType>? consumptionPricingType;
  /// Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  final pulumi.Input<String>? currencyCode;
  /// Description of the rate plan.
  final pulumi.Input<String>? description;
  /// Display name of the rate plan.
  final pulumi.Input<String>? displayName;
  /// Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  final pulumi.Input<String>? endTime;
  /// Frequency at which the fixed fee is charged.
  final pulumi.Input<int>? fixedFeeFrequency;
  /// Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  final pulumi.Input<GoogleTypeMoney>? fixedRecurringFee;
  final pulumi.Input<String> organizationId;
  /// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  final pulumi.Input<RatePlanPaymentFundingModel>? paymentFundingModel;
  /// Details of the revenue sharing model.
  final pulumi.Input<List<GoogleCloudApigeeV1RevenueShareRange>>? revenueShareRates;
  /// Method used to calculate the revenue that is shared with developers.
  final pulumi.Input<RatePlanRevenueShareType>? revenueShareType;
  /// Initial, one-time fee paid when purchasing the API product.
  final pulumi.Input<GoogleTypeMoney>? setupFee;
  /// Time when the rate plan becomes active in milliseconds since epoch.
  final pulumi.Input<String>? startTime;
  /// Current state of the rate plan (draft or published).
  final pulumi.Input<RatePlanState>? state;

  /// Creates a new [RatePlanArgs].
  /// [apiproduct] Name of the API product that the rate plan is associated with.
  /// [apiproductId] Required.
  /// [billingPeriod] Frequency at which the customer will be billed.
  /// [consumptionPricingRates] API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  /// [consumptionPricingType] Pricing model used for consumption-based charges.
  /// [currencyCode] Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  /// [description] Description of the rate plan.
  /// [displayName] Display name of the rate plan.
  /// [endTime] Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  /// [fixedFeeFrequency] Frequency at which the fixed fee is charged.
  /// [fixedRecurringFee] Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  /// [organizationId] Required.
  /// [paymentFundingModel] DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  /// [revenueShareRates] Details of the revenue sharing model.
  /// [revenueShareType] Method used to calculate the revenue that is shared with developers.
  /// [setupFee] Initial, one-time fee paid when purchasing the API product.
  /// [startTime] Time when the rate plan becomes active in milliseconds since epoch.
  /// [state] Current state of the rate plan (draft or published).
  RatePlanArgs({
    this.apiproduct,
    required this.apiproductId,
    this.billingPeriod,
    this.consumptionPricingRates,
    this.consumptionPricingType,
    this.currencyCode,
    this.description,
    this.displayName,
    this.endTime,
    this.fixedFeeFrequency,
    this.fixedRecurringFee,
    required this.organizationId,
    this.paymentFundingModel,
    this.revenueShareRates,
    this.revenueShareType,
    this.setupFee,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': ?apiproduct,
      'apiproductId': apiproductId,
      'billingPeriod': ?pulumi.Input.mapOptionalInputValue<RatePlanBillingPeriod, String>(billingPeriod, (value) => value.value),
      'consumptionPricingRates': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1RateRange>, List<Map<String, dynamic>>>(consumptionPricingRates, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1RateRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'consumptionPricingType': ?pulumi.Input.mapOptionalInputValue<RatePlanConsumptionPricingType, String>(consumptionPricingType, (value) => value.value),
      'currencyCode': ?currencyCode,
      'description': ?description,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'fixedFeeFrequency': ?fixedFeeFrequency,
      'fixedRecurringFee': ?pulumi.Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(fixedRecurringFee, (value) => value.toMap()),
      'organizationId': organizationId,
      'paymentFundingModel': ?pulumi.Input.mapOptionalInputValue<RatePlanPaymentFundingModel, String>(paymentFundingModel, (value) => value.value),
      'revenueShareRates': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1RevenueShareRange>, List<Map<String, dynamic>>>(revenueShareRates, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1RevenueShareRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revenueShareType': ?pulumi.Input.mapOptionalInputValue<RatePlanRevenueShareType, String>(revenueShareType, (value) => value.value),
      'setupFee': ?pulumi.Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(setupFee, (value) => value.toMap()),
      'startTime': ?startTime,
      'state': ?pulumi.Input.mapOptionalInputValue<RatePlanState, String>(state, (value) => value.value),
    };
  }

  factory RatePlanArgs.fromMap(Map<String, dynamic> map) {
    return RatePlanArgs(
      apiproduct: map['apiproduct'] == null ? null : (map['apiproduct']! as String).input(),
      apiproductId: (map['apiproductId'] as String).input(),
      billingPeriod: map['billingPeriod'] == null ? null : (RatePlanBillingPeriod.fromValue(map['billingPeriod']! as String)).input(),
      consumptionPricingRates: map['consumptionPricingRates'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1RateRange>(map['consumptionPricingRates']!, (value) => GoogleCloudApigeeV1RateRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      consumptionPricingType: map['consumptionPricingType'] == null ? null : (RatePlanConsumptionPricingType.fromValue(map['consumptionPricingType']! as String)).input(),
      currencyCode: map['currencyCode'] == null ? null : (map['currencyCode']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      fixedFeeFrequency: map['fixedFeeFrequency'] == null ? null : (map['fixedFeeFrequency']! as int).input(),
      fixedRecurringFee: map['fixedRecurringFee'] == null ? null : (GoogleTypeMoney.fromMap((map['fixedRecurringFee']! as Map).cast<String, dynamic>())).input(),
      organizationId: (map['organizationId'] as String).input(),
      paymentFundingModel: map['paymentFundingModel'] == null ? null : (RatePlanPaymentFundingModel.fromValue(map['paymentFundingModel']! as String)).input(),
      revenueShareRates: map['revenueShareRates'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1RevenueShareRange>(map['revenueShareRates']!, (value) => GoogleCloudApigeeV1RevenueShareRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      revenueShareType: map['revenueShareType'] == null ? null : (RatePlanRevenueShareType.fromValue(map['revenueShareType']! as String)).input(),
      setupFee: map['setupFee'] == null ? null : (GoogleTypeMoney.fromMap((map['setupFee']! as Map).cast<String, dynamic>())).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (RatePlanState.fromValue(map['state']! as String)).input(),
    );
  }
}

