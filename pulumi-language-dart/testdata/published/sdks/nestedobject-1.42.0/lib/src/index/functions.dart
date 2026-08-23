import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_values_args.dart';
import 'get_values_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_values_args_doc}
/// [options] Invoke options controlling this call.
Future<GetValuesResult> getValues(
  GetValuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'nestedobject:index:getValues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetValuesResult.fromMap(result);
}

pulumi.Output<GetValuesResult> getValuesOutput(
  GetValuesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'nestedobject:index:getValues',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetValuesResult.fromMap);
}
