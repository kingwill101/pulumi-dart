import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoke_array_args.dart';
import 'invoke_map_args.dart';
import 'invoke_secret_args.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_invoke_array_args_doc}
/// [options] Invoke options controlling this call.
Future<List<bool>> invokeArray(
  InvokeArrayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'scalar-returns:index:invokeArray',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return (value as List).cast<bool>();
}

pulumi.Output<List<bool>> invokeArrayOutput(
  InvokeArrayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'scalar-returns:index:invokeArray',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<List<bool>>((value) => (value as List).cast<bool>());
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_invoke_map_args_doc}
/// [options] Invoke options controlling this call.
Future<Map<String, String>> invokeMap(
  InvokeMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'scalar-returns:index:invokeMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return (value as Map).cast<String, String>();
}

pulumi.Output<Map<String, String>> invokeMapOutput(
  InvokeMapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'scalar-returns:index:invokeMap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<Map<String, String>>((value) => (value as Map).cast<String, String>());
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_invoke_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<double> invokeSecret(
  InvokeSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'scalar-returns:index:invokeSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return (value as num).toDouble();
}

pulumi.Output<double> invokeSecretOutput(
  InvokeSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'scalar-returns:index:invokeSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<double>((value) => (value as num).toDouble());
}
