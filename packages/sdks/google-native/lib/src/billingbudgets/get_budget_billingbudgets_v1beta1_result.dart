// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_billing_budgets_v1beta1_all_updates_rule_response.dart';
import 'google_cloud_billing_budgets_v1beta1_budget_amount_response.dart';
import 'google_cloud_billing_budgets_v1beta1_filter_response.dart';
import 'google_cloud_billing_budgets_v1beta1_threshold_rule_response.dart';

/// Result data returned by getBudget.
class GetBudgetBillingbudgetsV1beta1Result {
  /// Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  final GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse? allUpdatesRule;
  /// Budgeted amount.
  final GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse? amount;
  /// Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  final GoogleCloudBillingBudgetsV1beta1FilterResponse? budgetFilter;
  /// User data for display name in UI. Validation: &lt;= 60 chars.
  final String? displayName;
  /// Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  final String? etag;
  /// Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  final String? name;
  final String? ownershipScope;
  /// Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  final List<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>? thresholdRules;

  /// Creates a new [GetBudgetBillingbudgetsV1beta1Result].
  /// [allUpdatesRule] Optional. Rules to apply to notifications sent based on budget spend and thresholds.
  /// [amount] Budgeted amount.
  /// [budgetFilter] Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.
  /// [displayName] User data for display name in UI. Validation: &lt;= 60 chars.
  /// [etag] Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag will cause an update to overwrite other changes.
  /// [name] Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// [ownershipScope] Optional.
  /// [thresholdRules] Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.
  const GetBudgetBillingbudgetsV1beta1Result({
    this.allUpdatesRule,
    this.amount,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.name,
    this.ownershipScope,
    this.thresholdRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allUpdatesRule': ?allUpdatesRule?.toMap(),
      'amount': ?amount?.toMap(),
      'budgetFilter': ?budgetFilter?.toMap(),
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'ownershipScope': ?ownershipScope,
      'thresholdRules': ?(() { final guardedValue = thresholdRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBudgetBillingbudgetsV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetBudgetBillingbudgetsV1beta1Result(
      allUpdatesRule: (() { final guardedValue = map['allUpdatesRule']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1beta1AllUpdatesRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1beta1BudgetAmountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      budgetFilter: (() { final guardedValue = map['budgetFilter']; if (guardedValue == null) return null; return GoogleCloudBillingBudgetsV1beta1FilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownershipScope: (() { final guardedValue = map['ownershipScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thresholdRules: (() { final guardedValue = map['thresholdRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse>(guardedValue, (value) => GoogleCloudBillingBudgetsV1beta1ThresholdRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
