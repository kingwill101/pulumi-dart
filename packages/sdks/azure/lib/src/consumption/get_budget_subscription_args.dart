// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_consumption_get_budget_subscription_get_budget_subscription_args_doc}
/// Arguments for getBudgetSubscription.
/// {@endtemplate}
/// {@macro pulumi_consumption_get_budget_subscription_get_budget_subscription_args_doc}
class GetBudgetSubscriptionArgs {
  /// The name of this Consumption Budget.
  final pulumi.Input<String> name;
  /// The ID of the subscription.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetBudgetSubscriptionArgs].
  /// [name] The name of this Consumption Budget.
  /// [subscriptionId] The ID of the subscription.
  GetBudgetSubscriptionArgs({
    required this.name,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetBudgetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

