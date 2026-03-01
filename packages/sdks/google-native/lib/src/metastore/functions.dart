import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_metastore_v1alpha_args.dart';
import 'get_backup_metastore_v1alpha_result.dart';
import 'get_backup_metastore_v1beta_args.dart';
import 'get_backup_metastore_v1beta_result.dart';
import 'get_backup_result.dart';
import 'get_federation_args.dart';
import 'get_federation_iam_policy_args.dart';
import 'get_federation_iam_policy_metastore_v1alpha_args.dart';
import 'get_federation_iam_policy_metastore_v1alpha_result.dart';
import 'get_federation_iam_policy_metastore_v1beta_args.dart';
import 'get_federation_iam_policy_metastore_v1beta_result.dart';
import 'get_federation_iam_policy_result.dart';
import 'get_federation_metastore_v1alpha_args.dart';
import 'get_federation_metastore_v1alpha_result.dart';
import 'get_federation_metastore_v1beta_args.dart';
import 'get_federation_metastore_v1beta_result.dart';
import 'get_federation_result.dart';
import 'get_metadata_import_args.dart';
import 'get_metadata_import_metastore_v1alpha_args.dart';
import 'get_metadata_import_metastore_v1alpha_result.dart';
import 'get_metadata_import_metastore_v1beta_args.dart';
import 'get_metadata_import_metastore_v1beta_result.dart';
import 'get_metadata_import_result.dart';
import 'get_service_args.dart';
import 'get_service_backup_iam_policy_args.dart';
import 'get_service_backup_iam_policy_metastore_v1alpha_args.dart';
import 'get_service_backup_iam_policy_metastore_v1alpha_result.dart';
import 'get_service_backup_iam_policy_metastore_v1beta_args.dart';
import 'get_service_backup_iam_policy_metastore_v1beta_result.dart';
import 'get_service_backup_iam_policy_result.dart';
import 'get_service_database_iam_policy_args.dart';
import 'get_service_database_iam_policy_metastore_v1beta_args.dart';
import 'get_service_database_iam_policy_metastore_v1beta_result.dart';
import 'get_service_database_iam_policy_result.dart';
import 'get_service_database_table_iam_policy_args.dart';
import 'get_service_database_table_iam_policy_metastore_v1beta_args.dart';
import 'get_service_database_table_iam_policy_metastore_v1beta_result.dart';
import 'get_service_database_table_iam_policy_result.dart';
import 'get_service_iam_policy_args.dart';
import 'get_service_iam_policy_metastore_v1alpha_args.dart';
import 'get_service_iam_policy_metastore_v1alpha_result.dart';
import 'get_service_iam_policy_metastore_v1beta_args.dart';
import 'get_service_iam_policy_metastore_v1beta_result.dart';
import 'get_service_iam_policy_result.dart';
import 'get_service_metastore_v1alpha_args.dart';
import 'get_service_metastore_v1alpha_result.dart';
import 'get_service_metastore_v1beta_args.dart';
import 'get_service_metastore_v1beta_result.dart';
import 'get_service_result.dart';

/// Gets details of a single backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Gets the details of a single federation.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_federation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationResult> getFederation(
  GetFederationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_federation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationIamPolicyResult> getFederationIamPolicy(
  GetFederationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationIamPolicyResult.fromMap(result);
}

/// Gets details of a single import.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_metadata_import_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataImportResult> getMetadataImport(
  GetMetadataImportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportResult.fromMap(result);
}

/// Gets the details of a single service.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_service_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBackupIamPolicyResult> getServiceBackupIamPolicy(
  GetServiceBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getServiceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1_get_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyResult> getServiceIamPolicy(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyResult.fromMap(result);
}

/// Gets details of a single backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_backup_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupMetastoreV1alphaResult> getBackupMetastoreV1alpha(
  GetBackupMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupMetastoreV1alphaResult.fromMap(result);
}

/// Gets the details of a single federation.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_federation_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationMetastoreV1alphaResult> getFederationMetastoreV1alpha(
  GetFederationMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationMetastoreV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_federation_iam_policy_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationIamPolicyMetastoreV1alphaResult> getFederationIamPolicyMetastoreV1alpha(
  GetFederationIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationIamPolicyMetastoreV1alphaResult.fromMap(result);
}

/// Gets details of a single import.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_metadata_import_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataImportMetastoreV1alphaResult> getMetadataImportMetastoreV1alpha(
  GetMetadataImportMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportMetastoreV1alphaResult.fromMap(result);
}

/// Gets the details of a single service.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_service_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceMetastoreV1alphaResult> getServiceMetastoreV1alpha(
  GetServiceMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMetastoreV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_service_backup_iam_policy_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBackupIamPolicyMetastoreV1alphaResult> getServiceBackupIamPolicyMetastoreV1alpha(
  GetServiceBackupIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyMetastoreV1alphaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_service_database_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceDatabaseIamPolicyResult> getServiceDatabaseIamPolicy(
  GetServiceDatabaseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_service_database_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceDatabaseTableIamPolicyResult> getServiceDatabaseTableIamPolicy(
  GetServiceDatabaseTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseTableIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1alpha_get_service_iam_policy_metastore_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyMetastoreV1alphaResult> getServiceIamPolicyMetastoreV1alpha(
  GetServiceIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyMetastoreV1alphaResult.fromMap(result);
}

/// Gets details of a single backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_backup_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupMetastoreV1betaResult> getBackupMetastoreV1beta(
  GetBackupMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupMetastoreV1betaResult.fromMap(result);
}

/// Gets the details of a single federation.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_federation_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationMetastoreV1betaResult> getFederationMetastoreV1beta(
  GetFederationMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationMetastoreV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_federation_iam_policy_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFederationIamPolicyMetastoreV1betaResult> getFederationIamPolicyMetastoreV1beta(
  GetFederationIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationIamPolicyMetastoreV1betaResult.fromMap(result);
}

/// Gets details of a single import.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_metadata_import_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetadataImportMetastoreV1betaResult> getMetadataImportMetastoreV1beta(
  GetMetadataImportMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getMetadataImport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetadataImportMetastoreV1betaResult.fromMap(result);
}

/// Gets the details of a single service.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_service_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceMetastoreV1betaResult> getServiceMetastoreV1beta(
  GetServiceMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMetastoreV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_service_backup_iam_policy_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBackupIamPolicyMetastoreV1betaResult> getServiceBackupIamPolicyMetastoreV1beta(
  GetServiceBackupIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyMetastoreV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_service_database_iam_policy_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceDatabaseIamPolicyMetastoreV1betaResult> getServiceDatabaseIamPolicyMetastoreV1beta(
  GetServiceDatabaseIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseIamPolicyMetastoreV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_service_database_table_iam_policy_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceDatabaseTableIamPolicyMetastoreV1betaResult> getServiceDatabaseTableIamPolicyMetastoreV1beta(
  GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseTableIamPolicyMetastoreV1betaResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_metastore_v1beta_get_service_iam_policy_metastore_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceIamPolicyMetastoreV1betaResult> getServiceIamPolicyMetastoreV1beta(
  GetServiceIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyMetastoreV1betaResult.fromMap(result);
}
