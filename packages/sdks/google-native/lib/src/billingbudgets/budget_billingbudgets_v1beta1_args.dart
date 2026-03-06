// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_ownership_scope_billingbudgets_v1beta1.dart';
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1beta1_filter.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule.dart';

/// {@template pulumi_billingbudgets_v1beta1_budget_billingbudgets_v1beta1_args_doc}
/// The set of arguments for Budget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1beta1_budget_billingbudgets_v1beta1_args_doc}
class BudgetBillingbudgetsV1beta1Args {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>? allUpdatesRule;
  /// Budgeted amount.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1BudgetAmount> amount;
  final pulumi.Input<String> billingAccountId;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1Filter>? budgetFilter;
  /// User data for display name in UI. Validation: &lt;= 60 chars.
  final pulumi.Input<String>? displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  final pulumi.Input<String>? etag;
  final pulumi.Input<BudgetOwnershipScopeBillingbudgetsV1beta1>? ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final pulumi.Input<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>? thresholdRules;

  /// Creates a new [BudgetBillingbudgetsV1beta1Args].
  /// [allUpdatesRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [amount] Budgeted amount.
  /// [billingAccountId] Required.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. Validation: &lt;= 60 chars.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  /// [ownershipScope] Optional.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  const BudgetBillingbudgetsV1beta1Args({
    this.allUpdatesRule,
    required this.amount,
    required this.billingAccountId,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allUpdatesRule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule, Map<String, dynamic>>(allUpdatesRule, (value) => value.toMap()),
      'amount': pulumi.Input.mapInputValue<GoogleCloudBillingBudgetsV1beta1BudgetAmount, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'billingAccountId': billingAccountId,
      'budgetFilter': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1beta1Filter, Map<String, dynamic>>(budgetFilter, (value) => value.toMap()),
      'displayName': ?displayName,
      'etag': ?etag,
      'ownershipScope': ?pulumi.Input.mapOptionalInputValue<BudgetOwnershipScopeBillingbudgetsV1beta1, String>(ownershipScope, (value) => value.wireValue),
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BudgetBillingbudgetsV1beta1Args(
      allUpdatesRule: (() { final guardedValue = map['allUpdatesRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amount: pulumi.Input.fromValue(GoogleCloudBillingBudgetsV1beta1BudgetAmount.fromMap((map['amount']! as Map).cast<String, dynamic>())),
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      budgetFilter: (() { final guardedValue = map['budgetFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBillingBudgetsV1beta1Filter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipScope: (() { final guardedValue = map['ownershipScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetOwnershipScopeBillingbudgetsV1beta1.fromValue(guardedValue as String)); })(),
      thresholdRules: (() { final guardedValue = map['thresholdRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRule>(guardedValue, (value) => GoogleCloudBillingBudgetsV1beta1ThresholdRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

