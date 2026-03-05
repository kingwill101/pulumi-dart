import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_pool_args.dart';
import 'get_machine_pool_result.dart';
import 'get_open_shift_cluster_args.dart';
import 'get_open_shift_cluster_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_sync_identity_provider_args.dart';
import 'get_sync_identity_provider_result.dart';
import 'get_sync_set_args.dart';
import 'get_sync_set_result.dart';
import 'list_open_shift_cluster_admin_credentials_args.dart';
import 'list_open_shift_cluster_admin_credentials_result.dart';
import 'list_open_shift_cluster_credentials_args.dart';
import 'list_open_shift_cluster_credentials_result.dart';

/// The operation returns properties of a MachinePool.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_get_machine_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachinePoolResult> getMachinePool(
  GetMachinePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:getMachinePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachinePoolResult.fromMap(result);
}

/// The operation returns properties of a OpenShift cluster.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04, 2024-08-12-preview, 2025-07-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_get_open_shift_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenShiftClusterResult> getOpenShiftCluster(
  GetOpenShiftClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:getOpenShiftCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenShiftClusterResult.fromMap(result);
}

/// The operation returns properties of a Secret.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// The operation returns properties of a SyncIdentityProvider.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_get_sync_identity_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncIdentityProviderResult> getSyncIdentityProvider(
  GetSyncIdentityProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:getSyncIdentityProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncIdentityProviderResult.fromMap(result);
}

/// The operation returns properties of a SyncSet.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_get_sync_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSyncSetResult> getSyncSet(
  GetSyncSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:getSyncSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSyncSetResult.fromMap(result);
}

/// The operation returns the admin kubeconfig.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04, 2024-08-12-preview, 2025-07-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_list_open_shift_cluster_admin_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOpenShiftClusterAdminCredentialsResult> listOpenShiftClusterAdminCredentials(
  ListOpenShiftClusterAdminCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:listOpenShiftClusterAdminCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOpenShiftClusterAdminCredentialsResult.fromMap(result);
}

/// The operation returns the credentials.
///
/// Uses Azure REST API version 2023-11-22.
///
/// Other available API versions: 2022-09-04, 2023-04-01, 2023-07-01-preview, 2023-09-04, 2024-08-12-preview, 2025-07-25. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redhatopenshift [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_redhatopenshift_list_open_shift_cluster_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOpenShiftClusterCredentialsResult> listOpenShiftClusterCredentials(
  ListOpenShiftClusterCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:redhatopenshift:listOpenShiftClusterCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOpenShiftClusterCredentialsResult.fromMap(result);
}
