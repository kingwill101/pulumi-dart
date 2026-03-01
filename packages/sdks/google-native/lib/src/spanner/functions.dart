import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';
import 'get_instance_args.dart';
import 'get_instance_backup_iam_policy_args.dart';
import 'get_instance_backup_iam_policy_result.dart';
import 'get_instance_config_args.dart';
import 'get_instance_config_result.dart';
import 'get_instance_database_iam_policy_args.dart';
import 'get_instance_database_iam_policy_result.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';
import 'get_session_args.dart';
import 'get_session_result.dart';

/// Gets metadata on a pending or completed Backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Gets the state of a Cloud Spanner database.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}

/// Gets information about a particular instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_instance_backup_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceBackupIamPolicyResult> getInstanceBackupIamPolicy(
  GetInstanceBackupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceBackupIamPolicyResult.fromMap(result);
}

/// Gets information about a particular instance configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_instance_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceConfigResult> getInstanceConfig(
  GetInstanceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceConfigResult.fromMap(result);
}

/// Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_instance_database_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceDatabaseIamPolicyResult> getInstanceDatabaseIamPolicy(
  GetInstanceDatabaseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceDatabaseIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set. Authorization requires `spanner.instances.getIamPolicy` on resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Gets a session. Returns `NOT_FOUND` if the session does not exist. This is mainly useful for determining whether a session is still alive.
/// [args] Arguments passed to this invoke. {@macro pulumi_spanner_v1_get_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSessionResult> getSession(
  GetSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionResult.fromMap(result);
}
