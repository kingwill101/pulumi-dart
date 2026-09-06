import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_landing_zone_account_operation_args.dart';
import 'get_landing_zone_account_operation_result.dart';
import 'get_landing_zone_configuration_operation_args.dart';
import 'get_landing_zone_configuration_operation_result.dart';
import 'get_landing_zone_registration_operation_args.dart';
import 'get_landing_zone_registration_operation_result.dart';

/// Get a landing zone account.
///
/// Uses Azure REST API version 2025-02-27-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_sovereign_get_landing_zone_account_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLandingZoneAccountOperationResult> getLandingZoneAccountOperation(
  GetLandingZoneAccountOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneAccountOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLandingZoneAccountOperationResult.fromMap(result);
}

pulumi.Output<GetLandingZoneAccountOperationResult> getLandingZoneAccountOperationOutput(
  GetLandingZoneAccountOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneAccountOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLandingZoneAccountOperationResult.fromMap);
}

/// Get a landing zone configuration.
///
/// Uses Azure REST API version 2025-02-27-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_sovereign_get_landing_zone_configuration_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLandingZoneConfigurationOperationResult> getLandingZoneConfigurationOperation(
  GetLandingZoneConfigurationOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneConfigurationOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLandingZoneConfigurationOperationResult.fromMap(result);
}

pulumi.Output<GetLandingZoneConfigurationOperationResult> getLandingZoneConfigurationOperationOutput(
  GetLandingZoneConfigurationOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneConfigurationOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLandingZoneConfigurationOperationResult.fromMap);
}

/// Get a landing zone registration.
///
/// Uses Azure REST API version 2025-02-27-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_sovereign_get_landing_zone_registration_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLandingZoneRegistrationOperationResult> getLandingZoneRegistrationOperation(
  GetLandingZoneRegistrationOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneRegistrationOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLandingZoneRegistrationOperationResult.fromMap(result);
}

pulumi.Output<GetLandingZoneRegistrationOperationResult> getLandingZoneRegistrationOperationOutput(
  GetLandingZoneRegistrationOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:sovereign:getLandingZoneRegistrationOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLandingZoneRegistrationOperationResult.fromMap);
}
