import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_invoke_args.dart';
import 'my_invoke_result.dart';
import 'secret_invoke_args.dart';
import 'secret_invoke_result.dart';
import 'unit_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_my_invoke_args_doc}
/// [options] Invoke options controlling this call.
Future<MyInvokeResult> myInvoke(
  MyInvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'output-only-invoke:index:myInvoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return MyInvokeResult.fromMap(result);
}

pulumi.Output<MyInvokeResult> myInvokeOutput(
  MyInvokeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'output-only-invoke:index:myInvoke',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(MyInvokeResult.fromMap);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_secret_invoke_args_doc}
/// [options] Invoke options controlling this call.
Future<SecretInvokeResult> secretInvoke(
  SecretInvokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'output-only-invoke:index:secretInvoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return SecretInvokeResult.fromMap(result);
}

pulumi.Output<SecretInvokeResult> secretInvokeOutput(
  SecretInvokeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'output-only-invoke:index:secretInvoke',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(SecretInvokeResult.fromMap);
}

/// [options] Invoke options controlling this call.
Future<UnitResult> unit(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'output-only-invoke:index:unit',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return UnitResult.fromMap(result);
}

pulumi.Output<UnitResult> unitOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'output-only-invoke:index:unit',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(UnitResult.fromMap);
}
