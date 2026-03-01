import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_springbootapp_args.dart';
import 'get_springbootapp_result.dart';
import 'get_springbootserver_args.dart';
import 'get_springbootserver_result.dart';
import 'get_springbootsite_args.dart';
import 'get_springbootsite_result.dart';

/// Get a springbootapps resource.
///
/// Uses Azure REST API version 2024-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazurespringboot_get_springbootapp_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpringbootappResult> getSpringbootapp(
  GetSpringbootappArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazurespringboot:getSpringbootapp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpringbootappResult.fromMap(result);
}

/// List springbootservers resource.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazurespringboot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazurespringboot_get_springbootserver_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpringbootserverResult> getSpringbootserver(
  GetSpringbootserverArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazurespringboot:getSpringbootserver',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpringbootserverResult.fromMap(result);
}

/// Get a springbootsites resource.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazurespringboot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_offazurespringboot_get_springbootsite_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpringbootsiteResult> getSpringbootsite(
  GetSpringbootsiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:offazurespringboot:getSpringbootsite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpringbootsiteResult.fromMap(result);
}
