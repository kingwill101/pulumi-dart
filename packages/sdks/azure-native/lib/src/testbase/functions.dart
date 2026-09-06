import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_request_args.dart';
import 'get_action_request_result.dart';
import 'get_billing_hub_service_free_hour_balance_args.dart';
import 'get_billing_hub_service_free_hour_balance_result.dart';
import 'get_billing_hub_service_usage_args.dart';
import 'get_billing_hub_service_usage_result.dart';
import 'get_credential_args.dart';
import 'get_credential_result.dart';
import 'get_custom_image_args.dart';
import 'get_custom_image_result.dart';
import 'get_customer_event_args.dart';
import 'get_customer_event_result.dart';
import 'get_draft_package_args.dart';
import 'get_draft_package_path_args.dart';
import 'get_draft_package_path_result.dart';
import 'get_draft_package_result.dart';
import 'get_favorite_process_args.dart';
import 'get_favorite_process_result.dart';
import 'get_image_definition_args.dart';
import 'get_image_definition_result.dart';
import 'get_package_args.dart';
import 'get_package_download_urlargs.dart';
import 'get_package_download_urlresult.dart';
import 'get_package_result.dart';
import 'get_test_base_account_args.dart';
import 'get_test_base_account_file_upload_url_args.dart';
import 'get_test_base_account_file_upload_url_result.dart';
import 'get_test_base_account_result.dart';
import 'get_test_result_console_log_download_urlargs.dart';
import 'get_test_result_console_log_download_urlresult.dart';
import 'get_test_result_download_urlargs.dart';
import 'get_test_result_download_urlresult.dart';
import 'get_test_result_video_download_urlargs.dart';
import 'get_test_result_video_download_urlresult.dart';

/// Get the action request under the specified test base account.
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_action_request_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActionRequestResult> getActionRequest(
  GetActionRequestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getActionRequest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActionRequestResult.fromMap(result);
}

pulumi.Output<GetActionRequestResult> getActionRequestOutput(
  GetActionRequestArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getActionRequest',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActionRequestResult.fromMap);
}

/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_billing_hub_service_free_hour_balance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingHubServiceFreeHourBalanceResult> getBillingHubServiceFreeHourBalance(
  GetBillingHubServiceFreeHourBalanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getBillingHubServiceFreeHourBalance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingHubServiceFreeHourBalanceResult.fromMap(result);
}

pulumi.Output<GetBillingHubServiceFreeHourBalanceResult> getBillingHubServiceFreeHourBalanceOutput(
  GetBillingHubServiceFreeHourBalanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getBillingHubServiceFreeHourBalance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingHubServiceFreeHourBalanceResult.fromMap);
}

/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_billing_hub_service_usage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBillingHubServiceUsageResult> getBillingHubServiceUsage(
  GetBillingHubServiceUsageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getBillingHubServiceUsage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBillingHubServiceUsageResult.fromMap(result);
}

pulumi.Output<GetBillingHubServiceUsageResult> getBillingHubServiceUsageOutput(
  GetBillingHubServiceUsageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getBillingHubServiceUsage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBillingHubServiceUsageResult.fromMap);
}

/// Gets a test base credential Resource
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialResult> getCredential(
  GetCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialResult.fromMap(result);
}

pulumi.Output<GetCredentialResult> getCredentialOutput(
  GetCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCredentialResult.fromMap);
}

/// Gets a test base custom image.
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_custom_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomImageResult> getCustomImage(
  GetCustomImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getCustomImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomImageResult.fromMap(result);
}

pulumi.Output<GetCustomImageResult> getCustomImageOutput(
  GetCustomImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getCustomImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomImageResult.fromMap);
}

/// Gets a Test Base CustomerEvent.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_customer_event_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerEventResult> getCustomerEvent(
  GetCustomerEventArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getCustomerEvent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerEventResult.fromMap(result);
}

pulumi.Output<GetCustomerEventResult> getCustomerEventOutput(
  GetCustomerEventArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getCustomerEvent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomerEventResult.fromMap);
}

/// Gets a Test Base Draft Package.
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_draft_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDraftPackageResult> getDraftPackage(
  GetDraftPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getDraftPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDraftPackageResult.fromMap(result);
}

pulumi.Output<GetDraftPackageResult> getDraftPackageOutput(
  GetDraftPackageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getDraftPackage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDraftPackageResult.fromMap);
}

/// Gets draft package path and temp working path with SAS.
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_draft_package_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDraftPackagePathResult> getDraftPackagePath(
  GetDraftPackagePathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getDraftPackagePath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDraftPackagePathResult.fromMap(result);
}

pulumi.Output<GetDraftPackagePathResult> getDraftPackagePathOutput(
  GetDraftPackagePathArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getDraftPackagePath',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDraftPackagePathResult.fromMap);
}

/// Gets a favorite process for a Test Base Package.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_favorite_process_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFavoriteProcessResult> getFavoriteProcess(
  GetFavoriteProcessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getFavoriteProcess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFavoriteProcessResult.fromMap(result);
}

pulumi.Output<GetFavoriteProcessResult> getFavoriteProcessOutput(
  GetFavoriteProcessArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getFavoriteProcess',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFavoriteProcessResult.fromMap);
}

/// Get image properties under the image definition name created by test base custom image which derived from 'VHD' source.
///
/// Uses Azure REST API version 2023-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_image_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageDefinitionResult> getImageDefinition(
  GetImageDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getImageDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageDefinitionResult.fromMap(result);
}

pulumi.Output<GetImageDefinitionResult> getImageDefinitionOutput(
  GetImageDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getImageDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImageDefinitionResult.fromMap);
}

/// Gets a Test Base Package.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPackageResult> getPackage(
  GetPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackageResult.fromMap(result);
}

pulumi.Output<GetPackageResult> getPackageOutput(
  GetPackageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getPackage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPackageResult.fromMap);
}

/// Gets the download URL of a package.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_package_download_urlargs_doc}
/// [options] Invoke options controlling this call.
Future<GetPackageDownloadURLResult> getPackageDownloadURL(
  GetPackageDownloadURLArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getPackageDownloadURL',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackageDownloadURLResult.fromMap(result);
}

pulumi.Output<GetPackageDownloadURLResult> getPackageDownloadURLOutput(
  GetPackageDownloadURLArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getPackageDownloadURL',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPackageDownloadURLResult.fromMap);
}

/// Gets a Test Base Account.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_test_base_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestBaseAccountResult> getTestBaseAccount(
  GetTestBaseAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getTestBaseAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestBaseAccountResult.fromMap(result);
}

pulumi.Output<GetTestBaseAccountResult> getTestBaseAccountOutput(
  GetTestBaseAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getTestBaseAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestBaseAccountResult.fromMap);
}

/// Gets the file upload URL of a Test Base Account.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_test_base_account_file_upload_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestBaseAccountFileUploadUrlResult> getTestBaseAccountFileUploadUrl(
  GetTestBaseAccountFileUploadUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getTestBaseAccountFileUploadUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestBaseAccountFileUploadUrlResult.fromMap(result);
}

pulumi.Output<GetTestBaseAccountFileUploadUrlResult> getTestBaseAccountFileUploadUrlOutput(
  GetTestBaseAccountFileUploadUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getTestBaseAccountFileUploadUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestBaseAccountFileUploadUrlResult.fromMap);
}

/// Gets the download URL of the test execution console log file.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_test_result_console_log_download_urlargs_doc}
/// [options] Invoke options controlling this call.
Future<GetTestResultConsoleLogDownloadURLResult> getTestResultConsoleLogDownloadURL(
  GetTestResultConsoleLogDownloadURLArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultConsoleLogDownloadURL',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestResultConsoleLogDownloadURLResult.fromMap(result);
}

pulumi.Output<GetTestResultConsoleLogDownloadURLResult> getTestResultConsoleLogDownloadURLOutput(
  GetTestResultConsoleLogDownloadURLArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultConsoleLogDownloadURL',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestResultConsoleLogDownloadURLResult.fromMap);
}

/// Gets the download URL of the test result.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_test_result_download_urlargs_doc}
/// [options] Invoke options controlling this call.
Future<GetTestResultDownloadURLResult> getTestResultDownloadURL(
  GetTestResultDownloadURLArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultDownloadURL',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestResultDownloadURLResult.fromMap(result);
}

pulumi.Output<GetTestResultDownloadURLResult> getTestResultDownloadURLOutput(
  GetTestResultDownloadURLArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultDownloadURL',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestResultDownloadURLResult.fromMap);
}

/// Gets the download URL of the test execution screen recording.
///
/// Uses Azure REST API version 2023-11-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_testbase_get_test_result_video_download_urlargs_doc}
/// [options] Invoke options controlling this call.
Future<GetTestResultVideoDownloadURLResult> getTestResultVideoDownloadURL(
  GetTestResultVideoDownloadURLArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultVideoDownloadURL',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestResultVideoDownloadURLResult.fromMap(result);
}

pulumi.Output<GetTestResultVideoDownloadURLResult> getTestResultVideoDownloadURLOutput(
  GetTestResultVideoDownloadURLArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:testbase:getTestResultVideoDownloadURL',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTestResultVideoDownloadURLResult.fromMap);
}
