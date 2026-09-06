import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_association_args.dart';
import 'get_management_association_result.dart';
import 'get_management_configuration_args.dart';
import 'get_management_configuration_result.dart';
import 'get_solution_args.dart';
import 'get_solution_result.dart';

/// Retrieves the user ManagementAssociation.
///
/// Uses Azure REST API version 2015-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationsmanagement_get_management_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementAssociationResult> getManagementAssociation(
  GetManagementAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getManagementAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementAssociationResult.fromMap(result);
}

pulumi.Output<GetManagementAssociationResult> getManagementAssociationOutput(
  GetManagementAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getManagementAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementAssociationResult.fromMap);
}

/// Retrieves the user ManagementConfiguration.
///
/// Uses Azure REST API version 2015-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationsmanagement_get_management_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementConfigurationResult> getManagementConfiguration(
  GetManagementConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getManagementConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementConfigurationResult.fromMap(result);
}

pulumi.Output<GetManagementConfigurationResult> getManagementConfigurationOutput(
  GetManagementConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getManagementConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementConfigurationResult.fromMap);
}

/// Retrieves the user solution.
///
/// Uses Azure REST API version 2015-11-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_operationsmanagement_get_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionResult> getSolution(
  GetSolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getSolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionResult.fromMap(result);
}

pulumi.Output<GetSolutionResult> getSolutionOutput(
  GetSolutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:operationsmanagement:getSolution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSolutionResult.fromMap);
}
