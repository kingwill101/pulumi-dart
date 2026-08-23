// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbudgets_v1_get_budget_args_doc}
/// Arguments for getBudget.
/// {@endtemplate}
/// {@macro pulumi_billingbudgets_v1_get_budget_args_doc}
class GetBudgetArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> budgetId;

  /// Creates a new [GetBudgetArgs].
  /// [billingAccountId] Required.
  /// [budgetId] Required.
  const GetBudgetArgs({
    required this.billingAccountId,
    required this.budgetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'budgetId': budgetId,
    };
  }

  factory GetBudgetArgs.fromMap(Map<String, dynamic> map) {
    return GetBudgetArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      budgetId: pulumi.Input.fromValue(map['budgetId'] as String),
    );
  }
}
