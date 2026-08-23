// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_money.dart';

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1BudgetAmount {
  /// Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  final pulumi.Input<Map<String, dynamic>>? lastPeriodAmount;
  /// A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  final pulumi.Input<GoogleTypeMoney>? specifiedAmount;

  /// Creates a new [GoogleCloudBillingBudgetsV1BudgetAmount].
  /// [lastPeriodAmount] Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.
  /// [specifiedAmount] A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.
  const GoogleCloudBillingBudgetsV1BudgetAmount({
    this.lastPeriodAmount,
    this.specifiedAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPeriodAmount': ?lastPeriodAmount,
      'specifiedAmount': ?pulumi.Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(specifiedAmount, (value) => value.toMap()),
    };
  }

  factory GoogleCloudBillingBudgetsV1BudgetAmount.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1BudgetAmount(
      lastPeriodAmount: (() { final guardedValue = map['lastPeriodAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      specifiedAmount: (() { final guardedValue = map['specifiedAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeMoney.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
