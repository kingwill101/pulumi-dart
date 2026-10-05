import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_args.dart';
import 'get_environment_composer_v1beta1_args.dart';
import 'get_environment_composer_v1beta1_result.dart';
import 'get_environment_result.dart';

/// Get an existing environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_v1_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

pulumi.Output<GetEnvironmentResult> getEnvironmentOutput(
  GetEnvironmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:composer/v1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentResult.fromMap);
}

/// Get an existing environment.
/// [args] Arguments passed to this invoke. {@macro pulumi_composer_v1beta1_get_environment_composer_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentComposerV1beta1Result> getEnvironmentComposerV1beta1(
  GetEnvironmentComposerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:composer/v1beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentComposerV1beta1Result.fromMap(result);
}

pulumi.Output<GetEnvironmentComposerV1beta1Result> getEnvironmentComposerV1beta1Output(
  GetEnvironmentComposerV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:composer/v1beta1:getEnvironment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentComposerV1beta1Result.fromMap);
}
