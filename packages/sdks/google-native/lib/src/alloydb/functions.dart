import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_alloydb_v1alpha_args.dart';
import 'get_backup_alloydb_v1alpha_result.dart';
import 'get_backup_alloydb_v1beta_args.dart';
import 'get_backup_alloydb_v1beta_result.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';
import 'get_cluster_alloydb_v1alpha_args.dart';
import 'get_cluster_alloydb_v1alpha_result.dart';
import 'get_cluster_alloydb_v1beta_args.dart';
import 'get_cluster_alloydb_v1beta_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_instance_alloydb_v1alpha_args.dart';
import 'get_instance_alloydb_v1alpha_result.dart';
import 'get_instance_alloydb_v1beta_args.dart';
import 'get_instance_alloydb_v1beta_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_user_alloydb_v1alpha_args.dart';
import 'get_user_alloydb_v1alpha_result.dart';
import 'get_user_alloydb_v1beta_args.dart';
import 'get_user_alloydb_v1beta_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getBackup',
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
    'google-native:alloydb/v1:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupResult.fromMap);
}

/// Gets details of a single Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

pulumi.Output<GetInstanceResult> getInstanceOutput(
  GetInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Gets details of a single User.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

pulumi.Output<GetUserResult> getUserOutput(
  GetUserArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1:getUser',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserResult.fromMap);
}

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1alpha_get_backup_alloydb_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupAlloydbV1alphaResult> getBackupAlloydbV1alpha(
  GetBackupAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupAlloydbV1alphaResult.fromMap(result);
}

pulumi.Output<GetBackupAlloydbV1alphaResult> getBackupAlloydbV1alphaOutput(
  GetBackupAlloydbV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupAlloydbV1alphaResult.fromMap);
}

/// Gets details of a single Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1alpha_get_cluster_alloydb_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterAlloydbV1alphaResult> getClusterAlloydbV1alpha(
  GetClusterAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAlloydbV1alphaResult.fromMap(result);
}

pulumi.Output<GetClusterAlloydbV1alphaResult> getClusterAlloydbV1alphaOutput(
  GetClusterAlloydbV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterAlloydbV1alphaResult.fromMap);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1alpha_get_instance_alloydb_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAlloydbV1alphaResult> getInstanceAlloydbV1alpha(
  GetInstanceAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAlloydbV1alphaResult.fromMap(result);
}

pulumi.Output<GetInstanceAlloydbV1alphaResult> getInstanceAlloydbV1alphaOutput(
  GetInstanceAlloydbV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceAlloydbV1alphaResult.fromMap);
}

/// Gets details of a single User.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1alpha_get_user_alloydb_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserAlloydbV1alphaResult> getUserAlloydbV1alpha(
  GetUserAlloydbV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAlloydbV1alphaResult.fromMap(result);
}

pulumi.Output<GetUserAlloydbV1alphaResult> getUserAlloydbV1alphaOutput(
  GetUserAlloydbV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1alpha:getUser',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserAlloydbV1alphaResult.fromMap);
}

/// Gets details of a single Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1beta_get_backup_alloydb_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupAlloydbV1betaResult> getBackupAlloydbV1beta(
  GetBackupAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupAlloydbV1betaResult.fromMap(result);
}

pulumi.Output<GetBackupAlloydbV1betaResult> getBackupAlloydbV1betaOutput(
  GetBackupAlloydbV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupAlloydbV1betaResult.fromMap);
}

/// Gets details of a single Cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1beta_get_cluster_alloydb_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterAlloydbV1betaResult> getClusterAlloydbV1beta(
  GetClusterAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterAlloydbV1betaResult.fromMap(result);
}

pulumi.Output<GetClusterAlloydbV1betaResult> getClusterAlloydbV1betaOutput(
  GetClusterAlloydbV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterAlloydbV1betaResult.fromMap);
}

/// Gets details of a single Instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1beta_get_instance_alloydb_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAlloydbV1betaResult> getInstanceAlloydbV1beta(
  GetInstanceAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAlloydbV1betaResult.fromMap(result);
}

pulumi.Output<GetInstanceAlloydbV1betaResult> getInstanceAlloydbV1betaOutput(
  GetInstanceAlloydbV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceAlloydbV1betaResult.fromMap);
}

/// Gets details of a single User.
/// [args] Arguments passed to this invoke. {@macro pulumi_alloydb_v1beta_get_user_alloydb_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserAlloydbV1betaResult> getUserAlloydbV1beta(
  GetUserAlloydbV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserAlloydbV1betaResult.fromMap(result);
}

pulumi.Output<GetUserAlloydbV1betaResult> getUserAlloydbV1betaOutput(
  GetUserAlloydbV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:alloydb/v1beta:getUser',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserAlloydbV1betaResult.fromMap);
}
