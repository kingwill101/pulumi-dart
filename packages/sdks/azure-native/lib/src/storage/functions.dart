import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_blob_container_args.dart';
import 'get_blob_container_immutability_policy_args.dart';
import 'get_blob_container_immutability_policy_result.dart';
import 'get_blob_container_result.dart';
import 'get_blob_inventory_policy_args.dart';
import 'get_blob_inventory_policy_result.dart';
import 'get_blob_service_properties_args.dart';
import 'get_blob_service_properties_result.dart';
import 'get_encryption_scope_args.dart';
import 'get_encryption_scope_result.dart';
import 'get_file_service_properties_args.dart';
import 'get_file_service_properties_result.dart';
import 'get_file_share_args.dart';
import 'get_file_share_result.dart';
import 'get_local_user_args.dart';
import 'get_local_user_result.dart';
import 'get_management_policy_args.dart';
import 'get_management_policy_result.dart';
import 'get_object_replication_policy_args.dart';
import 'get_object_replication_policy_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_queue_args.dart';
import 'get_queue_result.dart';
import 'get_queue_service_properties_args.dart';
import 'get_queue_service_properties_result.dart';
import 'get_storage_account_args.dart';
import 'get_storage_account_result.dart';
import 'get_storage_task_assignment_args.dart';
import 'get_storage_task_assignment_result.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';
import 'get_table_service_properties_args.dart';
import 'get_table_service_properties_result.dart';
import 'list_local_user_keys_args.dart';
import 'list_local_user_keys_result.dart';
import 'list_storage_account_keys_args.dart';
import 'list_storage_account_keys_result.dart';
import 'list_storage_account_sasargs.dart';
import 'list_storage_account_sasresult.dart';
import 'list_storage_account_service_sasargs.dart';
import 'list_storage_account_service_sasresult.dart';

/// Gets properties of a specified container.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_blob_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobContainerResult> getBlobContainer(
  GetBlobContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getBlobContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobContainerResult.fromMap(result);
}

/// Gets the existing immutability policy along with the corresponding ETag in response headers and body.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_blob_container_immutability_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobContainerImmutabilityPolicyResult>
getBlobContainerImmutabilityPolicy(
  GetBlobContainerImmutabilityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getBlobContainerImmutabilityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobContainerImmutabilityPolicyResult.fromMap(result);
}

/// Gets the blob inventory policy associated with the specified storage account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_blob_inventory_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobInventoryPolicyResult> getBlobInventoryPolicy(
  GetBlobInventoryPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getBlobInventoryPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobInventoryPolicyResult.fromMap(result);
}

/// Gets the properties of a storage account’s Blob service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_blob_service_properties_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobServicePropertiesResult> getBlobServiceProperties(
  GetBlobServicePropertiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getBlobServiceProperties',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobServicePropertiesResult.fromMap(result);
}

/// Returns the properties for the specified encryption scope.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_encryption_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionScopeResult> getEncryptionScope(
  GetEncryptionScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getEncryptionScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionScopeResult.fromMap(result);
}

/// Gets the properties of file services in storage accounts, including CORS (Cross-Origin Resource Sharing) rules.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_file_service_properties_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileServicePropertiesResult> getFileServiceProperties(
  GetFileServicePropertiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getFileServiceProperties',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileServicePropertiesResult.fromMap(result);
}

/// Gets properties of a specified share.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_file_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileShareResult> getFileShare(
  GetFileShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getFileShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileShareResult.fromMap(result);
}

/// Get the local user of the storage account by username.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_local_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalUserResult> getLocalUser(
  GetLocalUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getLocalUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalUserResult.fromMap(result);
}

/// Gets the managementpolicy associated with the specified storage account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_management_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementPolicyResult> getManagementPolicy(
  GetManagementPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getManagementPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementPolicyResult.fromMap(result);
}

/// Get the object replication policy of the storage account by policy ID.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_object_replication_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectReplicationPolicyResult> getObjectReplicationPolicy(
  GetObjectReplicationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getObjectReplicationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectReplicationPolicyResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the storage account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the queue with the specified queue name, under the specified account if it exists.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

/// Gets the properties of a storage account’s Queue service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_queue_service_properties_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueServicePropertiesResult> getQueueServiceProperties(
  GetQueueServicePropertiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getQueueServiceProperties',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueServicePropertiesResult.fromMap(result);
}

/// Returns the properties for the specified storage account including but not limited to name, SKU name, location, and account status. The ListKeys operation should be used to retrieve storage keys.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_storage_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageAccountResult> getStorageAccount(
  GetStorageAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getStorageAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageAccountResult.fromMap(result);
}

/// Get the storage task assignment properties
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_storage_task_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageTaskAssignmentResult> getStorageTaskAssignment(
  GetStorageTaskAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getStorageTaskAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageTaskAssignmentResult.fromMap(result);
}

/// Gets the table with the specified table name, under the specified account if it exists.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

/// Gets the properties of a storage account’s Table service, including properties for Storage Analytics and CORS (Cross-Origin Resource Sharing) rules.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_get_table_service_properties_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableServicePropertiesResult> getTableServiceProperties(
  GetTableServicePropertiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:getTableServiceProperties',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableServicePropertiesResult.fromMap(result);
}

/// List SSH authorized keys and shared key of the local user.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_list_local_user_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListLocalUserKeysResult> listLocalUserKeys(
  ListLocalUserKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:listLocalUserKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListLocalUserKeysResult.fromMap(result);
}

/// Lists the access keys or Kerberos keys (if active directory enabled) for the specified storage account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_list_storage_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListStorageAccountKeysResult> listStorageAccountKeys(
  ListStorageAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:listStorageAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStorageAccountKeysResult.fromMap(result);
}

/// List SAS credentials of a storage account.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_list_storage_account_sasargs_doc}
/// [options] Invoke options controlling this call.
Future<ListStorageAccountSASResult> listStorageAccountSAS(
  ListStorageAccountSASArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:listStorageAccountSAS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStorageAccountSASResult.fromMap(result);
}

/// List service SAS credentials of a specific resource.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_list_storage_account_service_sasargs_doc}
/// [options] Invoke options controlling this call.
Future<ListStorageAccountServiceSASResult> listStorageAccountServiceSAS(
  ListStorageAccountServiceSASArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storage:listStorageAccountServiceSAS',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListStorageAccountServiceSASResult.fromMap(result);
}
