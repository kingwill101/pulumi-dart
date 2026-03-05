import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_copilot_setting_result.dart';

/// Get a CopilotSettingsResource
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native portalservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetCopilotSettingResult> getCopilotSetting({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:portalservices:getCopilotSetting',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCopilotSettingResult.fromMap(result);
}
