import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_quota_args.dart';
import 'get_group_quota_result.dart';
import 'get_group_quota_subscription_args.dart';
import 'get_group_quota_subscription_result.dart';

/// Gets the GroupQuotas for the name passed. It will return the GroupQuotas properties only. The details on group quota can be access from the group quota APIs.
///
/// Uses Azure REST API version 2025-03-01.
///
/// Other available API versions: 2023-06-01-preview, 2024-10-15-preview, 2024-12-18-preview, 2025-03-15-preview, 2025-07-15, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quota [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_quota_get_group_quota_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupQuotaResult> getGroupQuota(
  GetGroupQuotaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:quota:getGroupQuota',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupQuotaResult.fromMap(result);
}

/// Returns the subscriptionIds along with its provisioning state for being associated with the GroupQuota. If the subscription is not a member of GroupQuota, it will return 404, else 200.
///
/// Uses Azure REST API version 2025-03-01.
///
/// Other available API versions: 2023-06-01-preview, 2024-10-15-preview, 2024-12-18-preview, 2025-03-15-preview, 2025-07-15, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native quota [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_quota_get_group_quota_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupQuotaSubscriptionResult> getGroupQuotaSubscription(
  GetGroupQuotaSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:quota:getGroupQuotaSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupQuotaSubscriptionResult.fromMap(result);
}
