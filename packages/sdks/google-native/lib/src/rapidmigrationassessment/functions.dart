import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_annotation_args.dart';
import 'get_annotation_result.dart';
import 'get_collector_args.dart';
import 'get_collector_result.dart';

/// Gets details of a single Annotation.
/// [args] Arguments passed to this invoke. {@macro pulumi_rapidmigrationassessment_v1_get_annotation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnnotationResult> getAnnotation(
  GetAnnotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getAnnotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationResult.fromMap(result);
}

pulumi.Output<GetAnnotationResult> getAnnotationOutput(
  GetAnnotationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getAnnotation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAnnotationResult.fromMap);
}

/// Gets details of a single Collector.
/// [args] Arguments passed to this invoke. {@macro pulumi_rapidmigrationassessment_v1_get_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCollectorResult> getCollector(
  GetCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCollectorResult.fromMap(result);
}

pulumi.Output<GetCollectorResult> getCollectorOutput(
  GetCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCollectorResult.fromMap);
}
