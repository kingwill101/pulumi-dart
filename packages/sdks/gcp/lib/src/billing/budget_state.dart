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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User data for display name in UI. Must be &lt;= 60 chars.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User data for display name in UI. Must be &lt;= 60 chars.
  /// [name] Resource name of the budget. The resource name
  /// [ownershipScope] The ownership scope of the budget. The ownership scope and users'
  /// [thresholdRules] Rules that trigger alerts (notifications of thresholds being
  const BudgetState({
    this.allUpdatesRule,
    this.amount,
    this.billingAccount,
    this.budgetFilter,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'ownershipScope': ?ownershipScope,
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<BudgetThresholdRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<BudgetThresholdRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetState.fromMap(Map<String, dynamic> map) {
    return BudgetState(
      allUpdatesRule: (() { final guardedValue = map['allUpdatesRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetAllUpdatesRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetAmount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingAccount: (() { final guardedValue = map['billingAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      budgetFilter: (() { final guardedValue = map['budgetFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetBudgetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipScope: (() { final guardedValue = map['ownershipScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thresholdRules: (() { final guardedValue = map['thresholdRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetThresholdRule>(guardedValue, (value) => BudgetThresholdRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
