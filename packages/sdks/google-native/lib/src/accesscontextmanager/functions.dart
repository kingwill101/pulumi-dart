import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_level_accesscontextmanager_v1beta_args.dart';
import 'get_access_level_accesscontextmanager_v1beta_result.dart';
import 'get_access_level_args.dart';
import 'get_access_level_result.dart';
import 'get_access_policy_accesscontextmanager_v1beta_args.dart';
import 'get_access_policy_accesscontextmanager_v1beta_result.dart';
import 'get_access_policy_args.dart';
import 'get_access_policy_iam_policy_args.dart';
import 'get_access_policy_iam_policy_result.dart';
import 'get_access_policy_result.dart';
import 'get_authorized_orgs_desc_args.dart';
import 'get_authorized_orgs_desc_result.dart';
import 'get_gcp_user_access_binding_args.dart';
import 'get_gcp_user_access_binding_result.dart';
import 'get_service_perimeter_accesscontextmanager_v1beta_args.dart';
import 'get_service_perimeter_accesscontextmanager_v1beta_result.dart';
import 'get_service_perimeter_args.dart';
import 'get_service_perimeter_result.dart';

/// Gets an access level based on the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_access_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessLevelResult> getAccessLevel(
  GetAccessLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAccessLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessLevelResult.fromMap(result);
}

/// Returns an access policy based on the name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}

/// Gets the IAM policy for the specified Access Context Manager access policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_access_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyIamPolicyResult> getAccessPolicyIamPolicy(
  GetAccessPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAccessPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyIamPolicyResult.fromMap(result);
}

/// Gets an authorized orgs desc based on the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_authorized_orgs_desc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedOrgsDescResult> getAuthorizedOrgsDesc(
  GetAuthorizedOrgsDescArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getAuthorizedOrgsDesc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedOrgsDescResult.fromMap(result);
}

/// Gets the GcpUserAccessBinding with the given name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_gcp_user_access_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGcpUserAccessBindingResult> getGcpUserAccessBinding(
  GetGcpUserAccessBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getGcpUserAccessBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGcpUserAccessBindingResult.fromMap(result);
}

/// Gets a service perimeter based on the resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1_get_service_perimeter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePerimeterResult> getServicePerimeter(
  GetServicePerimeterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1:getServicePerimeter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePerimeterResult.fromMap(result);
}

/// Get an Access Level by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1beta_get_access_level_accesscontextmanager_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessLevelAccesscontextmanagerV1betaResult> getAccessLevelAccesscontextmanagerV1beta(
  GetAccessLevelAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessLevelAccesscontextmanagerV1betaResult.fromMap(result);
}

/// Get an AccessPolicy by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1beta_get_access_policy_accesscontextmanager_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyAccesscontextmanagerV1betaResult> getAccessPolicyAccesscontextmanagerV1beta(
  GetAccessPolicyAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyAccesscontextmanagerV1betaResult.fromMap(result);
}

/// Get a Service Perimeter by resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_accesscontextmanager_v1beta_get_service_perimeter_accesscontextmanager_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePerimeterAccesscontextmanagerV1betaResult> getServicePerimeterAccesscontextmanagerV1beta(
  GetServicePerimeterAccesscontextmanagerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:accesscontextmanager/v1beta:getServicePerimeter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePerimeterAccesscontextmanagerV1betaResult.fromMap(result);
}
