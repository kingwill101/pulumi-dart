// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_rate_range_response.dart';
import 'google_cloud_apigee_v1_revenue_share_range_response.dart';
import 'google_type_money_response.dart';

/// Result data returned by getRatePlan.
class GetRatePlanResult {
  /// Name of the API product that the rate plan is associated with.
  final String apiproduct;

  /// Frequency at which the customer will be billed.
  final String billingPeriod;

  /// API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  final List<GoogleCloudApigeeV1RateRangeResponse> consumptionPricingRates;

  /// Pricing model used for consumption-based charges.
  final String consumptionPricingType;

  /// Time that the rate plan was created in milliseconds since epoch.
  final String createdAt;

  /// Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  final String currencyCode;

  /// Description of the rate plan.
  final String description;

  /// Display name of the rate plan.
  final String displayName;

  /// Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  final String endTime;

  /// Frequency at which the fixed fee is charged.
  final int fixedFeeFrequency;

  /// Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  final GoogleTypeMoneyResponse fixedRecurringFee;

  /// Time the rate plan was last modified in milliseconds since epoch.
  final String lastModifiedAt;

  /// Name of the rate plan.
  final String name;

  /// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  final String paymentFundingModel;

  /// Details of the revenue sharing model.
  final List<GoogleCloudApigeeV1RevenueShareRangeResponse> revenueShareRates;

  /// Method used to calculate the revenue that is shared with developers.
  final String revenueShareType;

  /// Initial, one-time fee paid when purchasing the API product.
  final GoogleTypeMoneyResponse setupFee;

  /// Time when the rate plan becomes active in milliseconds since epoch.
  final String startTime;

  /// Current state of the rate plan (draft or published).
  final String state;

  /// Creates a new [GetRatePlanResult].
  /// [apiproduct] Name of the API product that the rate plan is associated with.
  /// [billingPeriod] Frequency at which the customer will be billed.
  /// [consumptionPricingRates] API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  /// [consumptionPricingType] Pricing model used for consumption-based charges.
  /// [createdAt] Time that the rate plan was created in milliseconds since epoch.
  /// [currencyCode] Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  /// [description] Description of the rate plan.
  /// [displayName] Display name of the rate plan.
  /// [endTime] Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  /// [fixedFeeFrequency] Frequency at which the fixed fee is charged.
  /// [fixedRecurringFee] Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  /// [lastModifiedAt] Time the rate plan was last modified in milliseconds since epoch.
  /// [name] Name of the rate plan.
  /// [paymentFundingModel] DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  /// [revenueShareRates] Details of the revenue sharing model.
  /// [revenueShareType] Method used to calculate the revenue that is shared with developers.
  /// [setupFee] Initial, one-time fee paid when purchasing the API product.
  /// [startTime] Time when the rate plan becomes active in milliseconds since epoch.
  /// [state] Current state of the rate plan (draft or published).
  GetRatePlanResult({
    required this.apiproduct,
    required this.billingPeriod,
    required this.consumptionPricingRates,
    required this.consumptionPricingType,
    required this.createdAt,
    required this.currencyCode,
    required this.description,
    required this.displayName,
    required this.endTime,
    required this.fixedFeeFrequency,
    required this.fixedRecurringFee,
    required this.lastModifiedAt,
    required this.name,
    required this.paymentFundingModel,
    required this.revenueShareRates,
    required this.revenueShareType,
    required this.setupFee,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': apiproduct,
      'billingPeriod': billingPeriod,
      'consumptionPricingRates':
          pulumi.Input.encodeList<
            GoogleCloudApigeeV1RateRangeResponse,
            Map<String, dynamic>
          >(consumptionPricingRates, (value) => value.toMap()),
      'consumptionPricingType': consumptionPricingType,
      'createdAt': createdAt,
      'currencyCode': currencyCode,
      'description': description,
      'displayName': displayName,
      'endTime': endTime,
      'fixedFeeFrequency': fixedFeeFrequency,
      'fixedRecurringFee': fixedRecurringFee.toMap(),
      'lastModifiedAt': lastModifiedAt,
      'name': name,
      'paymentFundingModel': paymentFundingModel,
      'revenueShareRates':
          pulumi.Input.encodeList<
            GoogleCloudApigeeV1RevenueShareRangeResponse,
            Map<String, dynamic>
          >(revenueShareRates, (value) => value.toMap()),
      'revenueShareType': revenueShareType,
      'setupFee': setupFee.toMap(),
      'startTime': startTime,
      'state': state,
    };
  }

  factory GetRatePlanResult.fromMap(Map<String, dynamic> map) {
    return GetRatePlanResult(
      apiproduct: map['apiproduct'] as String,
      billingPeriod: map['billingPeriod'] as String,
      consumptionPricingRates:
          pulumi.Input.decodeList<GoogleCloudApigeeV1RateRangeResponse>(
            map['consumptionPricingRates']!,
            (value) => GoogleCloudApigeeV1RateRangeResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      consumptionPricingType: map['consumptionPricingType'] as String,
      createdAt: map['createdAt'] as String,
      currencyCode: map['currencyCode'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      fixedFeeFrequency: map['fixedFeeFrequency'] as int,
      fixedRecurringFee: GoogleTypeMoneyResponse.fromMap(
        (map['fixedRecurringFee']! as Map).cast<String, dynamic>(),
      ),
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      paymentFundingModel: map['paymentFundingModel'] as String,
      revenueShareRates:
          pulumi.Input.decodeList<GoogleCloudApigeeV1RevenueShareRangeResponse>(
            map['revenueShareRates']!,
            (value) => GoogleCloudApigeeV1RevenueShareRangeResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      revenueShareType: map['revenueShareType'] as String,
      setupFee: GoogleTypeMoneyResponse.fromMap(
        (map['setupFee']! as Map).cast<String, dynamic>(),
      ),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}
