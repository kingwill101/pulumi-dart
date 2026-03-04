// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_billing_budgets_v1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1_filter_response.dart';
import 'google_cloud_billing_budgets_v1_notifications_rule_response.dart';
import 'google_cloud_billing_budgets_v1_threshold_rule_response.dart';

/// Result data returned by getBudget.
class GetBudgetResult {
  /// Budgeted amount.
  final GoogleCloudBillingBudgetsV1BudgetAmountResponse amount;

  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final GoogleCloudBillingBudgetsV1FilterResponse budgetFilter;

  /// User data for display name in UI. The name must be less than or equal to 60 characters.
  final String displayName;

  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  final String etag;

  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  final String name;

  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final GoogleCloudBillingBudgetsV1NotificationsRuleResponse notificationsRule;
  final String ownershipScope;

  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final List<GoogleCloudBillingBudgetsV1ThresholdRuleResponse> thresholdRules;

  /// Creates a new [GetBudgetResult].
  /// [amount] Budgeted amount.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. The name must be less than or equal to 60 characters.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.
  /// [name] Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// [notificationsRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [ownershipScope] Required.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  GetBudgetResult({
    required this.amount,
    required this.budgetFilter,
    required this.displayName,
    required this.etag,
    required this.name,
    required this.notificationsRule,
    required this.ownershipScope,
    required this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount.toMap(),
      'budgetFilter': budgetFilter.toMap(),
      'displayName': displayName,
      'etag': etag,
      'name': name,
      'notificationsRule': notificationsRule.toMap(),
      'ownershipScope': ownershipScope,
      'thresholdRules':
          pulumi.Input.encodeList<
            GoogleCloudBillingBudgetsV1ThresholdRuleResponse,
            Map<String, dynamic>
          >(thresholdRules, (value) => value.toMap()),
    };
  }

  factory GetBudgetResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResult(
      amount: GoogleCloudBillingBudgetsV1BudgetAmountResponse.fromMap(
        (map['amount']! as Map).cast<String, dynamic>(),
      ),
      budgetFilter: GoogleCloudBillingBudgetsV1FilterResponse.fromMap(
        (map['budgetFilter']! as Map).cast<String, dynamic>(),
      ),
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      notificationsRule:
          GoogleCloudBillingBudgetsV1NotificationsRuleResponse.fromMap(
            (map['notificationsRule']! as Map).cast<String, dynamic>(),
          ),
      ownershipScope: map['ownershipScope'] as String,
      thresholdRules:
          pulumi.Input.decodeList<
            GoogleCloudBillingBudgetsV1ThresholdRuleResponse
          >(
            map['thresholdRules']!,
            (value) => GoogleCloudBillingBudgetsV1ThresholdRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
