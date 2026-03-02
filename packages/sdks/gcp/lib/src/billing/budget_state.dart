// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_all_updates_rule.dart';
import 'budget_amount.dart';
import 'budget_budget_filter.dart';
import 'budget_threshold_rule.dart';

/// Input properties used for looking up and filtering Budget resources.
class BudgetState {
  /// Defines notifications that are sent on every update to the
  /// billing account's spend, regardless of the thresholds defined
  /// using threshold rules.
  /// Structure is documented below.
  final pulumi.Input<BudgetAllUpdatesRule>? allUpdatesRule;
  /// The budgeted amount for each usage period.
  /// Structure is documented below.
  final pulumi.Input<BudgetAmount>? amount;
  /// ID of the billing account to set a budget on.
  final pulumi.Input<String>? billingAccount;
  /// Filters that define which resources are used to compute the actual
  /// spend against the budget.
  /// Structure is documented below.
  final pulumi.Input<BudgetBudgetFilter>? budgetFilter;
  /// User data for display name in UI. Must be <= 60 chars.
  final pulumi.Input<String>? displayName;
  /// Resource name of the budget. The resource name
  /// implies the scope of a budget. Values are of the form
  /// billingAccounts/{billingAccountId}/budgets/{budgetId}.
  final pulumi.Input<String>? name;
  /// The ownership scope of the budget. The ownership scope and users'
  /// IAM permissions determine who has full access to the budget's data.
  /// Possible values are: `OWNERSHIP_SCOPE_UNSPECIFIED`, `ALL_USERS`, `BILLING_ACCOUNT`.
  final pulumi.Input<String>? ownershipScope;
  /// Rules that trigger alerts (notifications of thresholds being
  /// crossed) when spend exceeds the specified percentages of the
  /// budget.
  /// Structure is documented below.
  final pulumi.Input<List<BudgetThresholdRule>>? thresholdRules;

  /// Creates a new [BudgetState].
  /// [allUpdatesRule] Defines notifications that are sent on every update to the
  /// [amount] The budgeted amount for each usage period.
  /// [billingAccount] ID of the billing account to set a budget on.
  /// [budgetFilter] Filters that define which resources are used to compute the actual
  /// [displayName] User data for display name in UI. Must be <= 60 chars.
  /// [name] Resource name of the budget. The resource name
  /// [ownershipScope] The ownership scope of the budget. The ownership scope and users'
  /// [thresholdRules] Rules that trigger alerts (notifications of thresholds being
  BudgetState({
    this.allUpdatesRule,
    this.amount,
    this.billingAccount,
    this.budgetFilter,
    this.displayName,
    this.name,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allUpdatesRule': ?pulumi.Input.mapOptionalInputValue<BudgetAllUpdatesRule, Map<String, dynamic>>(allUpdatesRule, (value) => value.toMap()),
      'amount': ?pulumi.Input.mapOptionalInputValue<BudgetAmount, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'billingAccount': ?billingAccount,
      'budgetFilter': ?pulumi.Input.mapOptionalInputValue<BudgetBudgetFilter, Map<String, dynamic>>(budgetFilter, (value) => value.toMap()),
      'displayName': ?displayName,
      'name': ?name,
      'ownershipScope': ?ownershipScope,
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<BudgetThresholdRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<BudgetThresholdRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetState.fromMap(Map<String, dynamic> map) {
    return BudgetState(
      allUpdatesRule: map['allUpdatesRule'] == null ? null : (BudgetAllUpdatesRule.fromMap((map['allUpdatesRule'] as Map).cast<String, dynamic>())).input(),
      amount: map['amount'] == null ? null : (BudgetAmount.fromMap((map['amount'] as Map).cast<String, dynamic>())).input(),
      billingAccount: map['billingAccount'] == null ? null : (map['billingAccount'] as String).input(),
      budgetFilter: map['budgetFilter'] == null ? null : (BudgetBudgetFilter.fromMap((map['budgetFilter'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownershipScope: map['ownershipScope'] == null ? null : (map['ownershipScope'] as String).input(),
      thresholdRules: map['thresholdRules'] == null ? null : (pulumi.Input.decodeList<BudgetThresholdRule>(map['thresholdRules'], (value) => BudgetThresholdRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

