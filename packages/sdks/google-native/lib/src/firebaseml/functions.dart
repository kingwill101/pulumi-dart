import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_args.dart';
import 'get_model_result.dart';

/// Gets a model resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaseml_v1beta2_get_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseml/v1beta2:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}
