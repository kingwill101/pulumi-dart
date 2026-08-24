import 'package:pulumi/pulumi.dart' as pulumi;
import 'to_secret_args.dart';
import 'to_secret_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_to_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<ToSecretResult> toSecret(
  ToSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'config-grpc:index:toSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ToSecretResult.fromMap(result);
}

pulumi.Output<ToSecretResult> toSecretOutput(
  ToSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'config-grpc:index:toSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ToSecretResult.fromMap);
}
