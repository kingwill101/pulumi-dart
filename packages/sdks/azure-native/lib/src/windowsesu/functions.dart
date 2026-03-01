import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multiple_activation_key_args.dart';
import 'get_multiple_activation_key_result.dart';

/// Get a MAK key.
///
/// Uses Azure REST API version 2019-09-16-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_windowsesu_get_multiple_activation_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMultipleActivationKeyResult> getMultipleActivationKey(
  GetMultipleActivationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:windowsesu:getMultipleActivationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMultipleActivationKeyResult.fromMap(result);
}
