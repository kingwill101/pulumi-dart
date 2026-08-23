// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_money_response_billingbudgets_v1beta1.dart';

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse {
  /// Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  final pulumi.Input<Map<String, dynamic>> lastPeriodAmount;
  /// A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  final pulumi.Input<GoogleTypeMoneyResponseBillingbudgetsV1beta1> specifiedAmount;

  /// Creates a new [GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse].
  /// [lastPeriodAmount] Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  /// [specifiedAmount] A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  const GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse({
    required this.lastPeriodAmount,
    required this.specifiedAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPeriodAmount': lastPeriodAmount,
      'specifiedAmount': pulumi.Input.mapInputValue<GoogleTypeMoneyResponseBillingbudgetsV1beta1, Map<String, dynamic>>(specifiedAmount, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse(
      lastPeriodAmount: pulumi.Input.fromValue((map['lastPeriodAmount']! as Map).cast<String, dynamic>()),
      specifiedAmount: pulumi.Input.fromValue(GoogleTypeMoneyResponseBillingbudgetsV1beta1.fromMap((map['specifiedAmount']! as Map).cast<String, dynamic>())),
    );
  }
}
