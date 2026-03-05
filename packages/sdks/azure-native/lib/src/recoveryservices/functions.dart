import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_protected_item_args.dart';
import 'get_protected_item_result.dart';
import 'get_protection_container_args.dart';
import 'get_protection_container_result.dart';
import 'get_protection_intent_args.dart';
import 'get_protection_intent_result.dart';
import 'get_protection_policy_args.dart';
import 'get_protection_policy_result.dart';
import 'get_recovery_point_access_token_args.dart';
import 'get_recovery_point_access_token_result.dart';
import 'get_replication_fabric_args.dart';
import 'get_replication_fabric_result.dart';
import 'get_replication_migration_item_args.dart';
import 'get_replication_migration_item_result.dart';
import 'get_replication_network_mapping_args.dart';
import 'get_replication_network_mapping_result.dart';
import 'get_replication_policy_args.dart';
import 'get_replication_policy_result.dart';
import 'get_replication_protected_item_args.dart';
import 'get_replication_protected_item_result.dart';
import 'get_replication_protection_cluster_args.dart';
import 'get_replication_protection_cluster_result.dart';
import 'get_replication_protection_container_mapping_args.dart';
import 'get_replication_protection_container_mapping_result.dart';
import 'get_replication_recovery_plan_args.dart';
import 'get_replication_recovery_plan_result.dart';
import 'get_replication_recovery_services_provider_args.dart';
import 'get_replication_recovery_services_provider_result.dart';
import 'get_replication_storage_classification_mapping_args.dart';
import 'get_replication_storage_classification_mapping_result.dart';
import 'get_replicationv_center_args.dart';
import 'get_replicationv_center_result.dart';
import 'get_resource_guard_proxy_args.dart';
import 'get_resource_guard_proxy_result.dart';
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Get Private Endpoint Connection. This call is made by Backup Admin.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Provides the details of the backed up item. This is an asynchronous operation. To know the status of the operation,
/// call the GetItemOperationResult API.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_protected_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectedItemResult> getProtectedItem(
  GetProtectedItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getProtectedItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectedItemResult.fromMap(result);
}

/// Gets details of the specific container registered to your Recovery Services Vault.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_protection_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectionContainerResult> getProtectionContainer(
  GetProtectionContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getProtectionContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectionContainerResult.fromMap(result);
}

/// Provides the details of the protection intent up item. This is an asynchronous operation. To know the status of the operation,
/// call the GetItemOperationResult API.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_protection_intent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectionIntentResult> getProtectionIntent(
  GetProtectionIntentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getProtectionIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectionIntentResult.fromMap(result);
}

/// Provides the details of the backup policies associated to Recovery Services Vault. This is an asynchronous
/// operation. Status of the operation can be fetched using GetPolicyOperationResult API.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_protection_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectionPolicyResult> getProtectionPolicy(
  GetProtectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getProtectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectionPolicyResult.fromMap(result);
}

/// Uses Azure REST API version 2023-01-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_recovery_point_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRecoveryPointAccessTokenResult> getRecoveryPointAccessToken(
  GetRecoveryPointAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getRecoveryPointAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRecoveryPointAccessTokenResult.fromMap(result);
}

/// Gets the details of an Azure Site Recovery fabric.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationFabricResult> getReplicationFabric(
  GetReplicationFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationFabricResult.fromMap(result);
}

/// Migration item.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_migration_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationMigrationItemResult> getReplicationMigrationItem(
  GetReplicationMigrationItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationMigrationItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationMigrationItemResult.fromMap(result);
}

/// Gets the details of an ASR network mapping.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_network_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationNetworkMappingResult> getReplicationNetworkMapping(
  GetReplicationNetworkMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationNetworkMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationNetworkMappingResult.fromMap(result);
}

/// Gets the details of a replication policy.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationPolicyResult> getReplicationPolicy(
  GetReplicationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationPolicyResult.fromMap(result);
}

/// Gets the details of an ASR replication protected item.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_protected_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationProtectedItemResult> getReplicationProtectedItem(
  GetReplicationProtectedItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationProtectedItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationProtectedItemResult.fromMap(result);
}

/// Gets the details of an ASR replication protection cluster.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_protection_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationProtectionClusterResult> getReplicationProtectionCluster(
  GetReplicationProtectionClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationProtectionCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationProtectionClusterResult.fromMap(result);
}

/// Gets the details of a protection container mapping.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_protection_container_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationProtectionContainerMappingResult>
getReplicationProtectionContainerMapping(
  GetReplicationProtectionContainerMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationProtectionContainerMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationProtectionContainerMappingResult.fromMap(result);
}

/// Gets the details of the recovery plan.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_recovery_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationRecoveryPlanResult> getReplicationRecoveryPlan(
  GetReplicationRecoveryPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationRecoveryPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationRecoveryPlanResult.fromMap(result);
}

/// Gets the details of registered recovery services provider.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_recovery_services_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationRecoveryServicesProviderResult>
getReplicationRecoveryServicesProvider(
  GetReplicationRecoveryServicesProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationRecoveryServicesProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationRecoveryServicesProviderResult.fromMap(result);
}

/// Gets the details of the specified storage classification mapping.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replication_storage_classification_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationStorageClassificationMappingResult>
getReplicationStorageClassificationMapping(
  GetReplicationStorageClassificationMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationStorageClassificationMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationStorageClassificationMappingResult.fromMap(result);
}

/// Gets the details of a registered vCenter server(Add vCenter server).
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_replicationv_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationvCenterResult> getReplicationvCenter(
  GetReplicationvCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getReplicationvCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationvCenterResult.fromMap(result);
}

/// Returns ResourceGuardProxy under vault and with the name referenced in request
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-07-30-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01, 2025-02-28-preview, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_resource_guard_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGuardProxyResult> getResourceGuardProxy(
  GetResourceGuardProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getResourceGuardProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGuardProxyResult.fromMap(result);
}

/// Get the Vault details.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2024-04-30-preview, 2024-09-30-preview, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_recoveryservices_get_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:recoveryservices:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
