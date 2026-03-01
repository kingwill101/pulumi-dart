import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_class_args.dart';
import 'get_custom_class_result.dart';
import 'get_phrase_set_args.dart';
import 'get_phrase_set_result.dart';

/// Get a custom class.
/// [args] Arguments passed to this invoke. {@macro pulumi_speech_v1_get_custom_class_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomClassResult> getCustomClass(
  GetCustomClassArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:speech/v1:getCustomClass',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomClassResult.fromMap(result);
}

/// Get a phrase set.
/// [args] Arguments passed to this invoke. {@macro pulumi_speech_v1_get_phrase_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPhraseSetResult> getPhraseSet(
  GetPhraseSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:speech/v1:getPhraseSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPhraseSetResult.fromMap(result);
}
