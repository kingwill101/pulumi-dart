import 'package:pulumi/pulumi.dart';
import 'get_local_reference_args.dart';
import 'get_local_reference_result.dart';

/// Access state from the local filesystem.
Future<GetLocalReferenceResult> getLocalReference(
  GetLocalReferenceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'terraform:state:getLocalReference',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalReferenceResult.fromMap(result);
}
