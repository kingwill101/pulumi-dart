import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_appliance_args.dart';
import 'get_appliance_result.dart';
import 'list_appliance_cluster_customer_user_credential_args.dart';
import 'list_appliance_cluster_customer_user_credential_result.dart';
import 'list_appliance_cluster_user_credential_args.dart';
import 'list_appliance_cluster_user_credential_result.dart';
import 'list_appliance_keys_args.dart';
import 'list_appliance_keys_result.dart';

/// Gets the details of an Appliance with a specified resource group and name.
///
/// Uses Azure REST API version 2022-10-27.
///
/// Other available API versions: 2022-04-15-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourceconnector [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourceconnector_get_appliance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplianceResult> getAppliance(
  GetApplianceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourceconnector:getAppliance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplianceResult.fromMap(result);
}

/// Returns the cluster customer user credentials for the dedicated appliance.
///
/// Uses Azure REST API version 2022-04-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourceconnector_list_appliance_cluster_customer_user_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplianceClusterCustomerUserCredentialResult>
listApplianceClusterCustomerUserCredential(
  ListApplianceClusterCustomerUserCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourceconnector:listApplianceClusterCustomerUserCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplianceClusterCustomerUserCredentialResult.fromMap(result);
}

/// Returns the cluster user credentials for the dedicated appliance.
///
/// Uses Azure REST API version 2022-10-27.
///
/// Other available API versions: 2022-04-15-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourceconnector [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourceconnector_list_appliance_cluster_user_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplianceClusterUserCredentialResult>
listApplianceClusterUserCredential(
  ListApplianceClusterUserCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourceconnector:listApplianceClusterUserCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplianceClusterUserCredentialResult.fromMap(result);
}

/// Returns the cluster customer credentials for the dedicated appliance.
///
/// Uses Azure REST API version 2022-10-27.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourceconnector [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourceconnector_list_appliance_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListApplianceKeysResult> listApplianceKeys(
  ListApplianceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourceconnector:listApplianceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListApplianceKeysResult.fromMap(result);
}
