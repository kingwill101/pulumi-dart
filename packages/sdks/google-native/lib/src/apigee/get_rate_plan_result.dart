// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_rate_range_response.dart';
import 'google_cloud_apigee_v1_revenue_share_range_response.dart';
import 'google_type_money_response.dart';

/// Result data returned by getRatePlan.
class GetRatePlanResult {
  /// Name of the API product that the rate plan is associated with.
  final String? apiproduct;
  /// Frequency at which the customer will be billed.
  final String? billingPeriod;
  /// API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { "start": 1, "end": 100, "fee": 75 }, { "start": 101, "end": 200, "fee": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.
  final List<GoogleCloudApigeeV1RateRangeResponse>? consumptionPricingRates;
  /// Pricing model used for consumption-based charges.
  final String? consumptionPricingType;
  /// Time that the rate plan was created in milliseconds since epoch.
  final String? createdAt;
  /// Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.
  final String? currencyCode;
  /// Description of the rate plan.
  final String? description;
  /// Display name of the rate plan.
  final String? displayName;
  /// Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.
  final String? endTime;
  /// Frequency at which the fixed fee is charged.
  final int? fixedFeeFrequency;
  /// Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.
  final GoogleTypeMoneyResponse? fixedRecurringFee;
  /// Time the rate plan was last modified in milliseconds since epoch.
  final String? lastModifiedAt;
  /// Name of the rate plan.
  final String? name;
  /// DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.
  final String? paymentFundingModel;
  /// Details of the revenue sharing model.
  final List<GoogleCloudApigeeV1RevenueShareRangeResponse>? revenueShareRates;
  /// Method used to calculate the revenue that is shared with developers.
  final String? revenueShareType;
  /// Initial, one-time fee paid when purchasing the API product.
  final GoogleTypeMoneyResponse? setupFee;
  /// Time when the rate plan becomes active in milliseconds since epoch.
  final String? startTime;
  /// Current state of the rate plan (draft or published).
  final String? state;

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
  const GetRatePlanResult({
    this.apiproduct,
    this.billingPeriod,
    this.consumptionPricingRates,
    this.consumptionPricingType,
    this.createdAt,
    this.currencyCode,
    this.description,
    this.displayName,
    this.endTime,
    this.fixedFeeFrequency,
    this.fixedRecurringFee,
    this.lastModifiedAt,
    this.name,
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
      'billingPeriod': ?billingPeriod,
      'consumptionPricingRates': ?(() { final guardedValue = consumptionPricingRates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1RateRangeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'consumptionPricingType': ?consumptionPricingType,
      'createdAt': ?createdAt,
      'currencyCode': ?currencyCode,
      'description': ?description,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'fixedFeeFrequency': ?fixedFeeFrequency,
      'fixedRecurringFee': ?fixedRecurringFee?.toMap(),
      'lastModifiedAt': ?lastModifiedAt,
      'name': ?name,
      'paymentFundingModel': ?paymentFundingModel,
      'revenueShareRates': ?(() { final guardedValue = revenueShareRates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudApigeeV1RevenueShareRangeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'revenueShareType': ?revenueShareType,
      'setupFee': ?setupFee?.toMap(),
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory GetRatePlanResult.fromMap(Map<String, dynamic> map) {
    return GetRatePlanResult(
      apiproduct: (() { final guardedValue = map['apiproduct']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingPeriod: (() { final guardedValue = map['billingPeriod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumptionPricingRates: (() { final guardedValue = map['consumptionPricingRates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1RateRangeResponse>(guardedValue, (value) => GoogleCloudApigeeV1RateRangeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      consumptionPricingType: (() { final guardedValue = map['consumptionPricingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fixedFeeFrequency: (() { final guardedValue = map['fixedFeeFrequency']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      fixedRecurringFee: (() { final guardedValue = map['fixedRecurringFee']; if (guardedValue == null) return null; return GoogleTypeMoneyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedAt: (() { final guardedValue = map['lastModifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      paymentFundingModel: (() { final guardedValue = map['paymentFundingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revenueShareRates: (() { final guardedValue = map['revenueShareRates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudApigeeV1RevenueShareRangeResponse>(guardedValue, (value) => GoogleCloudApigeeV1RevenueShareRangeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      revenueShareType: (() { final guardedValue = map['revenueShareType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      setupFee: (() { final guardedValue = map['setupFee']; if (guardedValue == null) return null; return GoogleTypeMoneyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
