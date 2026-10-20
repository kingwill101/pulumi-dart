import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_access_control_args.dart';
import 'get_bucket_access_control_result.dart';
import 'get_bucket_args.dart';
import 'get_bucket_iam_policy_args.dart';
import 'get_bucket_iam_policy_result.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';
import 'get_bucket_result.dart';
import 'get_default_object_access_control_args.dart';
import 'get_default_object_access_control_result.dart';
import 'get_hmac_key_args.dart';
import 'get_hmac_key_result.dart';
import 'get_managed_folder_args.dart';
import 'get_managed_folder_iam_policy_args.dart';
import 'get_managed_folder_iam_policy_result.dart';
import 'get_managed_folder_result.dart';
import 'get_notification_args.dart';
import 'get_notification_result.dart';
import 'get_object_access_control_args.dart';
import 'get_object_access_control_result.dart';
import 'get_object_iam_policy_args.dart';
import 'get_object_iam_policy_result.dart';

/// Returns metadata for the specified bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}

pulumi.Output<GetBucketResult> getBucketOutput(
  GetBucketArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getBucket',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketResult.fromMap);
}

/// Returns the ACL entry for the specified entity on the specified bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_bucket_access_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketAccessControlResult> getBucketAccessControl(
  GetBucketAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketAccessControlResult.fromMap(result);
}

pulumi.Output<GetBucketAccessControlResult> getBucketAccessControlOutput(
  GetBucketAccessControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketAccessControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketAccessControlResult.fromMap);
}

/// Returns an IAM policy for the specified bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_bucket_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketIamPolicyResult> getBucketIamPolicy(
  GetBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketIamPolicyResult.fromMap(result);
}

pulumi.Output<GetBucketIamPolicyResult> getBucketIamPolicyOutput(
  GetBucketIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketIamPolicyResult.fromMap);
}

/// Retrieves an object or its metadata.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_bucket_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}

pulumi.Output<GetBucketObjectResult> getBucketObjectOutput(
  GetBucketObjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketObject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBucketObjectResult.fromMap);
}

/// Returns the default object ACL entry for the specified entity on the specified bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_default_object_access_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultObjectAccessControlResult> getDefaultObjectAccessControl(
  GetDefaultObjectAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getDefaultObjectAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultObjectAccessControlResult.fromMap(result);
}

pulumi.Output<GetDefaultObjectAccessControlResult> getDefaultObjectAccessControlOutput(
  GetDefaultObjectAccessControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getDefaultObjectAccessControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultObjectAccessControlResult.fromMap);
}

/// Retrieves an HMAC key's metadata
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_hmac_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHmacKeyResult> getHmacKey(
  GetHmacKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getHmacKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHmacKeyResult.fromMap(result);
}

pulumi.Output<GetHmacKeyResult> getHmacKeyOutput(
  GetHmacKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getHmacKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHmacKeyResult.fromMap);
}

/// Returns metadata of the specified managed folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_managed_folder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedFolderResult> getManagedFolder(
  GetManagedFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getManagedFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedFolderResult.fromMap(result);
}

pulumi.Output<GetManagedFolderResult> getManagedFolderOutput(
  GetManagedFolderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getManagedFolder',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedFolderResult.fromMap);
}

/// Returns an IAM policy for the specified managed folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_managed_folder_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedFolderIamPolicyResult> getManagedFolderIamPolicy(
  GetManagedFolderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getManagedFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedFolderIamPolicyResult.fromMap(result);
}

pulumi.Output<GetManagedFolderIamPolicyResult> getManagedFolderIamPolicyOutput(
  GetManagedFolderIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getManagedFolderIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedFolderIamPolicyResult.fromMap);
}

/// View a notification configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_notification_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationResult> getNotification(
  GetNotificationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getNotification',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationResult.fromMap(result);
}

pulumi.Output<GetNotificationResult> getNotificationOutput(
  GetNotificationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getNotification',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNotificationResult.fromMap);
}

/// Returns the ACL entry for the specified entity on the specified object.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_object_access_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectAccessControlResult> getObjectAccessControl(
  GetObjectAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectAccessControlResult.fromMap(result);
}

pulumi.Output<GetObjectAccessControlResult> getObjectAccessControlOutput(
  GetObjectAccessControlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectAccessControl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetObjectAccessControlResult.fromMap);
}

/// Returns an IAM policy for the specified object.
/// [args] Arguments passed to this invoke. {@macro pulumi_storage_v1_get_object_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectIamPolicyResult> getObjectIamPolicy(
  GetObjectIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectIamPolicyResult.fromMap(result);
}

pulumi.Output<GetObjectIamPolicyResult> getObjectIamPolicyOutput(
  GetObjectIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetObjectIamPolicyResult.fromMap);
}
