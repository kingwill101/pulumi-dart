import 'package:pulumi/pulumi.dart' as pulumi;
import 'fun_args.dart';
import 'fun_result.dart';

/// fun is a basic function for setting in_ on ResourceType.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_fun_args_doc}
/// [options] Invoke options controlling this call.
Future<FunResult> fun(
  FunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docs:index:fun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return FunResult.fromMap(result);
}

pulumi.Output<FunResult> funOutput(
  FunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'docs:index:fun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(FunResult.fromMap);
}
