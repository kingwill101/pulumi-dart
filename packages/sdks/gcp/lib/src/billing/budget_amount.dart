// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_amount_specified_amount.dart';

class BudgetAmount {
  /// Configures a budget amount that is automatically set to 100% of
  /// last period's spend.
  /// Boolean. Set value to true to use. Do not set to false, instead
  /// use the `specifiedAmount` block.
  final pulumi.Input<bool?>? lastPeriodAmount;
  /// A specified amount to use as the budget. currencyCode is
  /// optional. If specified, it must match the currency of the
  /// billing account. The currencyCode is provided on output.
  /// Structure is documented below.
  final pulumi.Input<BudgetAmountSpecifiedAmount?>? specifiedAmount;

  /// Creates a new [BudgetAmount].
  /// [lastPeriodAmount] Configures a budget amount that is automatically set to 100% of
  /// [specifiedAmount] A specified amount to use as the budget. currencyCode is
  const BudgetAmount({
    this.lastPeriodAmount,
    this.specifiedAmount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastPeriodAmount': ?lastPeriodAmount,
      'specifiedAmount': ?pulumi.Input.mapOptionalInputValue<BudgetAmountSpecifiedAmount, Map<String, dynamic>>(specifiedAmount, (value) => value.toMap()),
    };
  }

  factory BudgetAmount.fromMap(Map<String, dynamic> map) {
    return BudgetAmount(
      lastPeriodAmount: (() { final guardedValue = map['lastPeriodAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      specifiedAmount: (() { final guardedValue = map['specifiedAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetAmountSpecifiedAmount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
