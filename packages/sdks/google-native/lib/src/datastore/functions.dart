import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_args.dart';
import 'get_index_result.dart';

/// Gets an index.
/// [args] Arguments passed to this invoke. {@macro pulumi_datastore_v1_get_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIndexResult> getIndex(
  GetIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datastore/v1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexResult.fromMap(result);
}
