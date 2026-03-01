import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_args.dart';
import 'get_budget_billingbudgets_v1beta1_args.dart';
import 'get_budget_billingbudgets_v1beta1_result.dart';
import 'get_budget_result.dart';

/// Returns a budget. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. When reading from the API, you will not see these fields in the return value, though they may have been set in the Cloud Console.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbudgets_v1_get_budget_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetResult> getBudget(
  GetBudgetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:billingbudgets/v1:getBudget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetResult.fromMap(result);
}

/// Returns a budget. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. When reading from the API, you will not see these fields in the return value, though they may have been set in the Cloud Console.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingbudgets_v1beta1_get_budget_billingbudgets_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBudgetBillingbudgetsV1beta1Result> getBudgetBillingbudgetsV1beta1(
  GetBudgetBillingbudgetsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:billingbudgets/v1beta1:getBudget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBudgetBillingbudgetsV1beta1Result.fromMap(result);
}
