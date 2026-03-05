import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_security_advisory_impacted_resource_by_subscription_id_and_event_id_args.dart';
import 'list_security_advisory_impacted_resource_by_subscription_id_and_event_id_result.dart';
import 'list_security_advisory_impacted_resource_by_tenant_id_and_event_id_args.dart';
import 'list_security_advisory_impacted_resource_by_tenant_id_and_event_id_result.dart';

/// Lists impacted resources in the subscription by an event (Security Advisory).
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-10-01, 2023-07-01-preview, 2023-10-01-preview, 2025-04-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourcehealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcehealth_list_security_advisory_impacted_resource_by_subscription_id_and_event_id_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult> listSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventId(
  ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourcehealth:listSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSecurityAdvisoryImpactedResourceBySubscriptionIdAndEventIdResult.fromMap(result);
}

/// Lists impacted resources in the tenant by an event (Security Advisory).
///
/// Uses Azure REST API version 2024-02-01.
///
/// Other available API versions: 2022-10-01, 2023-07-01-preview, 2023-10-01-preview, 2025-04-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourcehealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcehealth_list_security_advisory_impacted_resource_by_tenant_id_and_event_id_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdResult> listSecurityAdvisoryImpactedResourceByTenantIdAndEventId(
  ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourcehealth:listSecurityAdvisoryImpactedResourceByTenantIdAndEventId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSecurityAdvisoryImpactedResourceByTenantIdAndEventIdResult.fromMap(result);
}
