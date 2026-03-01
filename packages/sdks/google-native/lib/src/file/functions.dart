import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_args.dart';
import 'get_backup_file_v1beta1_args.dart';
import 'get_backup_file_v1beta1_result.dart';
import 'get_backup_result.dart';
import 'get_instance_args.dart';
import 'get_instance_file_v1beta1_args.dart';
import 'get_instance_file_v1beta1_result.dart';
import 'get_instance_result.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_file_v1beta1_args.dart';
import 'get_snapshot_file_v1beta1_result.dart';
import 'get_snapshot_result.dart';

/// Gets the details of a specific backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Gets the details of a specific instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets the details of a specific snapshot.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Gets the details of a specific backup.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1beta1_get_backup_file_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupFileV1beta1Result> getBackupFileV1beta1(
  GetBackupFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupFileV1beta1Result.fromMap(result);
}

/// Gets the details of a specific instance.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1beta1_get_instance_file_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceFileV1beta1Result> getInstanceFileV1beta1(
  GetInstanceFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFileV1beta1Result.fromMap(result);
}

/// Gets the details of a specific share.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1beta1_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

/// Gets the details of a specific snapshot.
/// [args] Arguments passed to this invoke. {@macro pulumi_file_v1beta1_get_snapshot_file_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotFileV1beta1Result> getSnapshotFileV1beta1(
  GetSnapshotFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotFileV1beta1Result.fromMap(result);
}
