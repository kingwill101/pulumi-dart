import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_args.dart';
import 'get_key_result.dart';

/// Gets the metadata for an API key. The key string of the API key isn't included in the response. NOTE: Key is a global resource; hence the only supported value for location is `global`.
/// [args] Arguments passed to this invoke. {@macro pulumi_apikeys_v2_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apikeys/v2:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}
