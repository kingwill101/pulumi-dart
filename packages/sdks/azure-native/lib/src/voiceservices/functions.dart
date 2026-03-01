import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_communications_gateway_args.dart';
import 'get_communications_gateway_result.dart';
import 'get_contact_args.dart';
import 'get_contact_result.dart';
import 'get_test_line_args.dart';
import 'get_test_line_result.dart';

/// Get a CommunicationsGateway
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-12-01-preview, 2023-01-31, 2023-04-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native voiceservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_voiceservices_get_communications_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommunicationsGatewayResult> getCommunicationsGateway(
  GetCommunicationsGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:voiceservices:getCommunicationsGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommunicationsGatewayResult.fromMap(result);
}

/// Get a Contact
///
/// Uses Azure REST API version 2022-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_voiceservices_get_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:voiceservices:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}

/// Get a TestLine
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-12-01-preview, 2023-01-31, 2023-04-03. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native voiceservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_voiceservices_get_test_line_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestLineResult> getTestLine(
  GetTestLineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:voiceservices:getTestLine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestLineResult.fromMap(result);
}
