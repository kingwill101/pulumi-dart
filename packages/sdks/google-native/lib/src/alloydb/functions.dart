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
