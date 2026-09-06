import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dependency_of_relationship_args.dart';
import 'get_dependency_of_relationship_result.dart';
import 'get_service_group_member_relationship_args.dart';
import 'get_service_group_member_relationship_result.dart';

/// Get a DependencyOfRelationship
///
/// Uses Azure REST API version 2023-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_relationships_get_dependency_of_relationship_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDependencyOfRelationshipResult> getDependencyOfRelationship(
  GetDependencyOfRelationshipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relationships:getDependencyOfRelationship',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDependencyOfRelationshipResult.fromMap(result);
}

pulumi.Output<GetDependencyOfRelationshipResult> getDependencyOfRelationshipOutput(
  GetDependencyOfRelationshipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:relationships:getDependencyOfRelationship',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDependencyOfRelationshipResult.fromMap);
}

/// Get a ServiceGroupMemberRelationship
///
/// Uses Azure REST API version 2023-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_relationships_get_service_group_member_relationship_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceGroupMemberRelationshipResult> getServiceGroupMemberRelationship(
  GetServiceGroupMemberRelationshipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:relationships:getServiceGroupMemberRelationship',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceGroupMemberRelationshipResult.fromMap(result);
}

pulumi.Output<GetServiceGroupMemberRelationshipResult> getServiceGroupMemberRelationshipOutput(
  GetServiceGroupMemberRelationshipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:relationships:getServiceGroupMemberRelationship',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceGroupMemberRelationshipResult.fromMap);
}
