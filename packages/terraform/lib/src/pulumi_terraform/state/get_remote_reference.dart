import 'package:pulumi/pulumi.dart';
import 'get_remote_reference_args.dart';
import 'get_remote_reference_result.dart';

/// Access state from a remote backend.
Future<GetRemoteReferenceResult> getRemoteReference(
  GetRemoteReferenceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getRemoteReference',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRemoteReferenceResult.fromMap(result);
}
