import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Gets the DatabaseInstance identified by the specified resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebasedatabase_v1beta_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasedatabase/v1beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
