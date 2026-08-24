import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_value_args.dart';
import 'provider_value_result.dart';

/// The `providerValue` method of the `call` package's Custom resource. Returns the resource's provider's `value` and the resource's `value` concatenated.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_provider_value_args_doc}
/// [options] Invoke options controlling this call.
Future<ProviderValueResult> providerValue(
  ProviderValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'call:index:Custom/providerValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ProviderValueResult.fromMap(result);
}

pulumi.Output<ProviderValueResult> providerValueOutput(
  ProviderValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'call:index:Custom/providerValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ProviderValueResult.fromMap);
}
