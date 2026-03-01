import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_account_args.dart';
import 'get_insights_account_result.dart';
import 'get_insights_accounts_args.dart';
import 'get_insights_accounts_result.dart';
import 'get_policy_pack_args.dart';
import 'get_policy_pack_result.dart';
import 'get_policy_packs_args.dart';
import 'get_policy_packs_result.dart';

/// Get details about a specific Insights account.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_insights_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsAccountResult> getInsightsAccount(
  GetInsightsAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsAccountResult.fromMap(result);
}

/// Get a list of all Insights accounts for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_insights_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInsightsAccountsResult> getInsightsAccounts(
  GetInsightsAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getInsightsAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInsightsAccountsResult.fromMap(result);
}

/// Get details about a specific version of a policy pack.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_policy_pack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyPackResult> getPolicyPack(
  GetPolicyPackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyPackResult.fromMap(result);
}

/// Get a list of all policy packs for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_policy_packs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyPacksResult> getPolicyPacks(
  GetPolicyPacksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumiservice:index:getPolicyPacks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyPacksResult.fromMap(result);
}
