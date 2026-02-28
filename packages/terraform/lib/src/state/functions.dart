import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_reference_args.dart';
import 'get_local_reference_result.dart';
import 'get_remote_reference_args.dart';
import 'get_remote_reference_result.dart';

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
