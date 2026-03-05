import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_debug_token_args.dart';
import 'get_debug_token_firebaseappcheck_v1beta_args.dart';
import 'get_debug_token_firebaseappcheck_v1beta_result.dart';
import 'get_debug_token_result.dart';

/// Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaseappcheck_v1_get_debug_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDebugTokenResult> getDebugToken(
  GetDebugTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappcheck/v1:getDebugToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugTokenResult.fromMap(result);
}

/// Gets the specified DebugToken. For security reasons, the `token` field is never populated in the response.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaseappcheck_v1beta_get_debug_token_firebaseappcheck_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDebugTokenFirebaseappcheckV1betaResult>
getDebugTokenFirebaseappcheckV1beta(
  GetDebugTokenFirebaseappcheckV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappcheck/v1beta:getDebugToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugTokenFirebaseappcheckV1betaResult.fromMap(result);
}
