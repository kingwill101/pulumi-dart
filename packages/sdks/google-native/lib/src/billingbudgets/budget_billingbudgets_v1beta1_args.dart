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
  /// User data for display name in UI. Validation: <= 60 chars.
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
  /// [displayName] User data for display name in UI. Validation: <= 60 chars.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  /// [ownershipScope] Optional.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  BudgetBillingbudgetsV1beta1Args({
    pulumi.Output<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>? allUpdatesRule,
    required pulumi.Output<GoogleCloudBillingBudgetsV1beta1BudgetAmount> amount,
    required pulumi.Output<String> billingAccountId,
    pulumi.Output<GoogleCloudBillingBudgetsV1beta1Filter>? budgetFilter,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<BudgetOwnershipScopeBillingbudgetsV1beta1>? ownershipScope,
    pulumi.Output<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>? thresholdRules,
  }) :
      allUpdatesRule = pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>(allUpdatesRule),
      amount = pulumi.Input.asInput<GoogleCloudBillingBudgetsV1beta1BudgetAmount>(amount),
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      budgetFilter = pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1beta1Filter>(budgetFilter),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ownershipScope = pulumi.Input.asOptionalInput<BudgetOwnershipScopeBillingbudgetsV1beta1>(ownershipScope),
      thresholdRules = pulumi.Input.asOptionalInput<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>(thresholdRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allUpdatesRule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule, Map<String, dynamic>>(allUpdatesRule, (value) => value.toMap()),
      'amount': pulumi.Input.mapInputValue<GoogleCloudBillingBudgetsV1beta1BudgetAmount, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'billingAccountId': billingAccountId,
      'budgetFilter': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1beta1Filter, Map<String, dynamic>>(budgetFilter, (value) => value.toMap()),
      'displayName': ?displayName,
      'etag': ?etag,
      'ownershipScope': ?pulumi.Input.mapOptionalInputValue<BudgetOwnershipScopeBillingbudgetsV1beta1, String>(ownershipScope, (value) => value.value),
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BudgetBillingbudgetsV1beta1Args(
      allUpdatesRule: map['allUpdatesRule'] == null ? null : pulumi.Output.create<GoogleCloudBillingBudgetsV1beta1AllUpdatesRule>(GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromMap((map['allUpdatesRule'] as Map).cast<String, dynamic>())),
      amount: pulumi.Output.create<GoogleCloudBillingBudgetsV1beta1BudgetAmount>(GoogleCloudBillingBudgetsV1beta1BudgetAmount.fromMap((map['amount'] as Map).cast<String, dynamic>())),
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      budgetFilter: map['budgetFilter'] == null ? null : pulumi.Output.create<GoogleCloudBillingBudgetsV1beta1Filter>(GoogleCloudBillingBudgetsV1beta1Filter.fromMap((map['budgetFilter'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ownershipScope: map['ownershipScope'] == null ? null : pulumi.Output.create<BudgetOwnershipScopeBillingbudgetsV1beta1>(BudgetOwnershipScopeBillingbudgetsV1beta1.fromValue(map['ownershipScope'] as String)),
      thresholdRules: map['thresholdRules'] == null ? null : pulumi.Output.create<List<GoogleCloudBillingBudgetsV1beta1ThresholdRule>>(pulumi.Input.decodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRule>(map['thresholdRules'], (value) => GoogleCloudBillingBudgetsV1beta1ThresholdRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

