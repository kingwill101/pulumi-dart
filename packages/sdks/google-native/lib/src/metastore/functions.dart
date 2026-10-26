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

pulumi.Output<GetBackupResult> getBackupOutput(
  GetBackupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupResult.fromMap);
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

pulumi.Output<GetFederationResult> getFederationOutput(
  GetFederationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationResult.fromMap);
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

pulumi.Output<GetFederationIamPolicyResult> getFederationIamPolicyOutput(
  GetFederationIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getFederationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationIamPolicyResult.fromMap);
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

pulumi.Output<GetMetadataImportResult> getMetadataImportOutput(
  GetMetadataImportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getMetadataImport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataImportResult.fromMap);
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

pulumi.Output<GetServiceResult> getServiceOutput(
  GetServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceResult.fromMap);
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

pulumi.Output<GetServiceBackupIamPolicyResult> getServiceBackupIamPolicyOutput(
  GetServiceBackupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getServiceBackupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBackupIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceIamPolicyResult> getServiceIamPolicyOutput(
  GetServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyResult.fromMap);
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

pulumi.Output<GetBackupMetastoreV1alphaResult> getBackupMetastoreV1alphaOutput(
  GetBackupMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetFederationMetastoreV1alphaResult> getFederationMetastoreV1alphaOutput(
  GetFederationMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetFederationIamPolicyMetastoreV1alphaResult> getFederationIamPolicyMetastoreV1alphaOutput(
  GetFederationIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationIamPolicyMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetMetadataImportMetastoreV1alphaResult> getMetadataImportMetastoreV1alphaOutput(
  GetMetadataImportMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getMetadataImport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataImportMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetServiceMetastoreV1alphaResult> getServiceMetastoreV1alphaOutput(
  GetServiceMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetServiceBackupIamPolicyMetastoreV1alphaResult> getServiceBackupIamPolicyMetastoreV1alphaOutput(
  GetServiceBackupIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceBackupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBackupIamPolicyMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetServiceDatabaseIamPolicyResult> getServiceDatabaseIamPolicyOutput(
  GetServiceDatabaseIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceDatabaseIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceDatabaseTableIamPolicyResult> getServiceDatabaseTableIamPolicyOutput(
  GetServiceDatabaseTableIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceDatabaseTableIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceIamPolicyMetastoreV1alphaResult> getServiceIamPolicyMetastoreV1alphaOutput(
  GetServiceIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyMetastoreV1alphaResult.fromMap);
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

pulumi.Output<GetBackupMetastoreV1betaResult> getBackupMetastoreV1betaOutput(
  GetBackupMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetFederationMetastoreV1betaResult> getFederationMetastoreV1betaOutput(
  GetFederationMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetFederationIamPolicyMetastoreV1betaResult> getFederationIamPolicyMetastoreV1betaOutput(
  GetFederationIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederationIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFederationIamPolicyMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetMetadataImportMetastoreV1betaResult> getMetadataImportMetastoreV1betaOutput(
  GetMetadataImportMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getMetadataImport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetadataImportMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetServiceMetastoreV1betaResult> getServiceMetastoreV1betaOutput(
  GetServiceMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetServiceBackupIamPolicyMetastoreV1betaResult> getServiceBackupIamPolicyMetastoreV1betaOutput(
  GetServiceBackupIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceBackupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBackupIamPolicyMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetServiceDatabaseIamPolicyMetastoreV1betaResult> getServiceDatabaseIamPolicyMetastoreV1betaOutput(
  GetServiceDatabaseIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceDatabaseIamPolicyMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetServiceDatabaseTableIamPolicyMetastoreV1betaResult> getServiceDatabaseTableIamPolicyMetastoreV1betaOutput(
  GetServiceDatabaseTableIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceDatabaseTableIamPolicyMetastoreV1betaResult.fromMap);
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

pulumi.Output<GetServiceIamPolicyMetastoreV1betaResult> getServiceIamPolicyMetastoreV1betaOutput(
  GetServiceIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceIamPolicyMetastoreV1betaResult.fromMap);
}
