import 'package:pulumi/pulumi.dart' as pulumi;
import 'nested_plain_provider_args.dart';
import 'nested_plain_provider_result.dart';
import 'plain_provider_args.dart';
import 'plain_value_args.dart';

/// Returns a plain object containing a provider reference and an integer.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_nested_plain_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<NestedPlainProviderResult> nestedPlainProvider(
  NestedPlainProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'configurer:index:Configurer/nestedPlainProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return NestedPlainProviderResult.fromMap(result);
}

pulumi.Output<NestedPlainProviderResult> nestedPlainProviderOutput(
  NestedPlainProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'configurer:index:Configurer/nestedPlainProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(NestedPlainProviderResult.fromMap);
}

/// Returns the provider constructed by the component as a single-value plain return.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_plain_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<pulumi.ProviderResource> plainProvider(
  PlainProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'configurer:index:Configurer/plainProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return value as pulumi.ProviderResource;
}

pulumi.Output<pulumi.ProviderResource> plainProviderOutput(
  PlainProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'configurer:index:Configurer/plainProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<pulumi.ProviderResource>((value) => value as pulumi.ProviderResource);
}

/// Returns a plain integer (42) as a single-value plain return.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_plain_value_args_doc}
/// [options] Invoke options controlling this call.
Future<int> plainValue(
  PlainValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final value = await deployment.invokeSingle<dynamic>(
    'configurer:index:Configurer/plainValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(value);
}

pulumi.Output<int> plainValueOutput(
  PlainValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeSingleOutput<dynamic>(
    'configurer:index:Configurer/plainValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply<int>((value) => ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(value));
}
