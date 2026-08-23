// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbudgets_v1beta1_get_budget_billingbudgets_v1beta1_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1beta1_get_budget_billingbudgets_v1beta1_args_doc}
class GetBudgetBillingbudgetsV1beta1Args {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  /// Creates a new [GetBudgetBillingbudgetsV1beta1Args].
  /// [billingAccountId] Required.
  /// [budgetId] Required.
  const GetBudgetBillingbudgetsV1beta1Args({
    required this.billingAccountId,
    required this.budgetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'budgetId': budgetId,
    };
  }

  factory GetBudgetBillingbudgetsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBudgetBillingbudgetsV1beta1Args(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      budgetId: pulumi.Input.fromValue(map['budgetId'] as String),
    );
  }
}
