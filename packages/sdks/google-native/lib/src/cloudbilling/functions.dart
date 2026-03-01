import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_billing_account_args.dart';
import 'get_billing_account_iam_policy_args.dart';
import 'get_billing_account_iam_policy_result.dart';
import 'get_billing_account_result.dart';

/// Gets information about a billing account. The current authenticated user must be a [viewer of the billing account](https://cloud.google.com/billing/docs/how-to/billing-access).
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbilling_v1_get_billing_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountResult> getBillingAccount(
  GetBillingAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbilling/v1:getBillingAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountResult.fromMap(result);
}

/// Gets the access control policy for a billing account. The caller must have the `billing.accounts.getIamPolicy` permission on the account, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudbilling_v1_get_billing_account_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingAccountIamPolicyResult> getBillingAccountIamPolicy(
  GetBillingAccountIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudbilling/v1:getBillingAccountIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingAccountIamPolicyResult.fromMap(result);
}
