// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_ownership_scope.dart';
import 'google_cloud_billing_budgets_v1_budget_amount.dart';
import 'google_cloud_billing_budgets_v1_filter.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule.dart';

/// {@template pulumi_billingbudgets_v1_budget_args_doc}
/// The set of arguments for Budget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1_budget_args_doc}
class BudgetArgs {
  /// Budgeted amount.
  final pulumi.Input<GoogleCloudBillingBudgetsV1BudgetAmount> amount;
  final pulumi.Input<String> billingAccountId;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final pulumi.Input<GoogleCloudBillingBudgetsV1Filter>? budgetFilter;
  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  final pulumi.Input<String>? etag;
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final pulumi.Input<GoogleCloudBillingBudgetsV1NotificationsRule>? notificationsRule;
  final pulumi.Input<BudgetOwnershipScope>? ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final pulumi.Input<List<GoogleCloudBillingBudgetsV1ThresholdRule>>? thresholdRules;

  /// Creates a new [BudgetArgs].
  /// [amount] Budgeted amount.
  /// [billingAccountId] Required.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. The name must be less than or equal to 60 characters.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  /// [notificationsRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [ownershipScope] Optional.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  BudgetArgs({
    required pulumi.Output<GoogleCloudBillingBudgetsV1BudgetAmount> amount,
    required pulumi.Output<String> billingAccountId,
    pulumi.Output<GoogleCloudBillingBudgetsV1Filter>? budgetFilter,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<GoogleCloudBillingBudgetsV1NotificationsRule>? notificationsRule,
    pulumi.Output<BudgetOwnershipScope>? ownershipScope,
    pulumi.Output<List<GoogleCloudBillingBudgetsV1ThresholdRule>>? thresholdRules,
  }) :
      amount = pulumi.Input.asInput<GoogleCloudBillingBudgetsV1BudgetAmount>(amount),
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      budgetFilter = pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1Filter>(budgetFilter),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      notificationsRule = pulumi.Input.asOptionalInput<GoogleCloudBillingBudgetsV1NotificationsRule>(notificationsRule),
      ownershipScope = pulumi.Input.asOptionalInput<BudgetOwnershipScope>(ownershipScope),
      thresholdRules = pulumi.Input.asOptionalInput<List<GoogleCloudBillingBudgetsV1ThresholdRule>>(thresholdRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': pulumi.Input.mapInputValue<GoogleCloudBillingBudgetsV1BudgetAmount, Map<String, dynamic>>(amount, (value) => value.toMap()),
      'billingAccountId': billingAccountId,
      'budgetFilter': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1Filter, Map<String, dynamic>>(budgetFilter, (value) => value.toMap()),
      'displayName': ?displayName,
      'etag': ?etag,
      'notificationsRule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBillingBudgetsV1NotificationsRule, Map<String, dynamic>>(notificationsRule, (value) => value.toMap()),
      'ownershipScope': ?pulumi.Input.mapOptionalInputValue<BudgetOwnershipScope, String>(ownershipScope, (value) => value.value),
      'thresholdRules': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudBillingBudgetsV1ThresholdRule>, List<Map<String, dynamic>>>(thresholdRules, (value) => pulumi.Input.encodeList<GoogleCloudBillingBudgetsV1ThresholdRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BudgetArgs.fromMap(Map<String, dynamic> map) {
    return BudgetArgs(
      amount: pulumi.Output.create<GoogleCloudBillingBudgetsV1BudgetAmount>(GoogleCloudBillingBudgetsV1BudgetAmount.fromMap((map['amount'] as Map).cast<String, dynamic>())),
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      budgetFilter: map['budgetFilter'] == null ? null : pulumi.Output.create<GoogleCloudBillingBudgetsV1Filter>(GoogleCloudBillingBudgetsV1Filter.fromMap((map['budgetFilter'] as Map).cast<String, dynamic>())),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      notificationsRule: map['notificationsRule'] == null ? null : pulumi.Output.create<GoogleCloudBillingBudgetsV1NotificationsRule>(GoogleCloudBillingBudgetsV1NotificationsRule.fromMap((map['notificationsRule'] as Map).cast<String, dynamic>())),
      ownershipScope: map['ownershipScope'] == null ? null : pulumi.Output.create<BudgetOwnershipScope>(BudgetOwnershipScope.fromValue(map['ownershipScope'] as String)),
      thresholdRules: map['thresholdRules'] == null ? null : pulumi.Output.create<List<GoogleCloudBillingBudgetsV1ThresholdRule>>(pulumi.Input.decodeList<GoogleCloudBillingBudgetsV1ThresholdRule>(map['thresholdRules'], (value) => GoogleCloudBillingBudgetsV1ThresholdRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

