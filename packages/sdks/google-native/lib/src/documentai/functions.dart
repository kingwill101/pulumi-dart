import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_processor_args.dart';
import 'get_processor_documentai_v1beta3_args.dart';
import 'get_processor_documentai_v1beta3_result.dart';
import 'get_processor_result.dart';

/// Gets a processor detail.
/// [args] Arguments passed to this invoke. {@macro pulumi_documentai_v1_get_processor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProcessorResult> getProcessor(
  GetProcessorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1:getProcessor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessorResult.fromMap(result);
}

/// Gets a processor detail.
/// [args] Arguments passed to this invoke. {@macro pulumi_documentai_v1beta3_get_processor_documentai_v1beta3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProcessorDocumentaiV1beta3Result> getProcessorDocumentaiV1beta3(
  GetProcessorDocumentaiV1beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:documentai/v1beta3:getProcessor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessorDocumentaiV1beta3Result.fromMap(result);
}
