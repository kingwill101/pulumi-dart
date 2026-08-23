import 'package:pulumi/pulumi.dart' as pulumi;
import 'some_data_args.dart';
import 'some_data_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_cool_module_some_data_args_doc}
/// [options] Invoke options controlling this call.
Future<SomeDataResult> someData(
  SomeDataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'snake_names:cool_module:some_data',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return SomeDataResult.fromMap(result);
}

pulumi.Output<SomeDataResult> someDataOutput(
  SomeDataArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'snake_names:cool_module:some_data',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(SomeDataResult.fromMap);
}
