import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aml_filesystem_args.dart';
import 'get_aml_filesystem_result.dart';
import 'get_auto_export_job_args.dart';
import 'get_auto_export_job_result.dart';
import 'get_auto_import_job_args.dart';
import 'get_auto_import_job_result.dart';
import 'get_cache_args.dart';
import 'get_cache_result.dart';
import 'get_import_job_args.dart';
import 'get_import_job_result.dart';
import 'get_required_aml_fssubnets_size_args.dart';
import 'get_required_aml_fssubnets_size_result.dart';
import 'get_storage_target_args.dart';
import 'get_storage_target_result.dart';

/// Returns an AML file system.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_aml_filesystem_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAmlFilesystemResult> getAmlFilesystem(
  GetAmlFilesystemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getAmlFilesystem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmlFilesystemResult.fromMap(result);
}

/// Returns an auto export job.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_auto_export_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoExportJobResult> getAutoExportJob(
  GetAutoExportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getAutoExportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoExportJobResult.fromMap(result);
}

/// Returns an auto import job.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_auto_import_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoImportJobResult> getAutoImportJob(
  GetAutoImportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getAutoImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoImportJobResult.fromMap(result);
}

/// Returns a cache.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_cache_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCacheResult> getCache(
  GetCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCacheResult.fromMap(result);
}

/// Returns an import job.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_import_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportJobResult> getImportJob(
  GetImportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult.fromMap(result);
}

/// Get the number of available IP addresses needed for the AML file system information provided.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_required_aml_fssubnets_size_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRequiredAmlFSSubnetsSizeResult> getRequiredAmlFSSubnetsSize(
  GetRequiredAmlFSSubnetsSizeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getRequiredAmlFSSubnetsSize',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRequiredAmlFSSubnetsSizeResult.fromMap(result);
}

/// Returns a Storage Target from a cache.
///
/// Uses Azure REST API version 2024-03-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01-preview, 2024-07-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storagecache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_storagecache_get_storage_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageTargetResult> getStorageTarget(
  GetStorageTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:storagecache:getStorageTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageTargetResult.fromMap(result);
}
