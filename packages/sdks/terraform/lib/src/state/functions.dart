import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_rmreference_args.dart';
import 'get_azure_rmreference_result.dart';
import 'get_local_reference_args.dart';
import 'get_local_reference_result.dart';
import 'get_remote_reference_args.dart';
import 'get_remote_reference_result.dart';
import 'get_s3_reference_args.dart';
import 'get_s3_reference_result.dart';

/// Access state stored in an Azure Blob Storage container.
/// [args] Arguments passed to this invoke. {@macro pulumi_state_get_azure_rmreference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureRMReferenceResult> getAzureRMReference(
  GetAzureRMReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getAzureRMReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureRMReferenceResult.fromMap(result);
}

/// Access state from the local filesystem.
/// [args] Arguments passed to this invoke. {@macro pulumi_state_get_local_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalReferenceResult> getLocalReference(
  GetLocalReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getLocalReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalReferenceResult.fromMap(result);
}

/// Access state from a remote backend.
/// [args] Arguments passed to this invoke. {@macro pulumi_state_get_remote_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemoteReferenceResult> getRemoteReference(
  GetRemoteReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getRemoteReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemoteReferenceResult.fromMap(result);
}

/// Access state from an AWS S3 bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_state_get_s3_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetS3ReferenceResult> getS3Reference(
  GetS3ReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getS3Reference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetS3ReferenceResult.fromMap(result);
}
