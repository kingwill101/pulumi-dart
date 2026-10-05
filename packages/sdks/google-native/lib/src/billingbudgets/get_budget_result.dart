// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_billing_budgets_v1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1_filter_response.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule_response.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule_response.dart';

/// Result data returned by getBudget.
class GetBudgetResult {
  /// Budgeted amount.
  final GoogleCloudBillingBudgetsV1BudgetAmountResponse? amount;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final GoogleCloudBillingBudgetsV1FilterResponse? budgetFilter;
  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  final String? displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  final String? etag;
  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  final String? name;
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final GoogleCloudBillingBudgetsV1NotificationsRuleResponse? notificationsRule;
  final String? ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>? thresholdRules;

  /// Creates a new [GetBudgetResult].
  /// [amount] Budgeted amount.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. The name must be less than or equal to 60 characters.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  /// [name] Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// [notificationsRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [ownershipScope] Optional.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  const GetBudgetResult({
    this.amount,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.name,
    this.notificationsRule,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount?.toMap(),
      'budgetFilter': ?budgetFilter?.toMap(),
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'notificationsRule': ?notificationsRule?.toMap(),
      'ownershipScope': ?ownershipScope,
      'thresholdRules': ?(() { final guardedValue = thresholdRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudBillingBudgetsV1ThresholdRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1BudgetAmountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      budgetFilter: (() { final guardedValue = map['budgetFilter']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1FilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationsRule: (() { final guardedValue = map['notificationsRule']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1NotificationsRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ownershipScope: (() { final guardedValue = map['ownershipScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thresholdRules: (() { final guardedValue = map['thresholdRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudBillingBudgetsV1ThresholdRuleResponse>(guardedValue, (value) => GoogleCloudBillingBudgetsV1ThresholdRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
