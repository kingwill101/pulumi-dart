import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_profile_args.dart';
import 'get_app_profile_result.dart';
import 'get_backup_args.dart';
import 'get_backup_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_instance_args.dart';
import 'get_instance_cluster_backup_iam_policy_args.dart';
import 'get_instance_cluster_backup_iam_policy_result.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';
import 'get_instance_table_iam_policy_args.dart';
import 'get_instance_table_iam_policy_result.dart';
import 'get_table_args.dart';
import 'get_table_result.dart';

/// Gets information about an app profile.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_app_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppProfileResult> getAppProfile(
  GetAppProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getAppProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppProfileResult.fromMap(result);
}

pulumi.Output<GetAppProfileResult> getAppProfileOutput(
  GetAppProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getAppProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppProfileResult.fromMap);
}

/// Gets metadata on a pending or completed Cloud Bigtable Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getBackup',
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
    'google-native:bigtableadmin/v2:getBackup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBackupResult.fromMap);
}

/// Gets information about a cluster.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getCluster',
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
    'google-native:bigtableadmin/v2:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Gets information about an instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstance',
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
    'google-native:bigtableadmin/v2:getInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceResult.fromMap);
}

/// Gets the access control policy for a Table or Backup resource. Returns an empty policy if the resource exists but does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_instance_cluster_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceClusterBackupIamPolicyResult> getInstanceClusterBackupIamPolicy(
  GetInstanceClusterBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceClusterBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceClusterBackupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetInstanceClusterBackupIamPolicyResult> getInstanceClusterBackupIamPolicyOutput(
  GetInstanceClusterBackupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceClusterBackupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceClusterBackupIamPolicyResult.fromMap);
}

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetInstanceIamPolicyResult> getInstanceIamPolicyOutput(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceIamPolicyResult.fromMap);
}

/// Gets the access control policy for a Table or Backup resource. Returns an empty policy if the resource exists but does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_instance_table_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTableIamPolicyResult> getInstanceTableIamPolicy(
  GetInstanceTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTableIamPolicyResult.fromMap(result);
}

pulumi.Output<GetInstanceTableIamPolicyResult> getInstanceTableIamPolicyOutput(
  GetInstanceTableIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceTableIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInstanceTableIamPolicyResult.fromMap);
}

/// Gets metadata information about the specified table.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigtableadmin_v2_get_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTableResult> getTable(
  GetTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableResult.fromMap(result);
}

pulumi.Output<GetTableResult> getTableOutput(
  GetTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTableResult.fromMap);
}
