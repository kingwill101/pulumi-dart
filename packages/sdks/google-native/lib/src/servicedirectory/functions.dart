import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_endpoint_servicedirectory_v1beta1_args.dart';
import 'get_endpoint_servicedirectory_v1beta1_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_iam_policy_args.dart';
import 'get_namespace_iam_policy_result.dart';
import 'get_namespace_iam_policy_servicedirectory_v1beta1_args.dart';
import 'get_namespace_iam_policy_servicedirectory_v1beta1_result.dart';
import 'get_namespace_result.dart';
import 'get_namespace_service_iam_policy_args.dart';
import 'get_namespace_service_iam_policy_result.dart';
import 'get_namespace_service_iam_policy_servicedirectory_v1beta1_args.dart';
import 'get_namespace_service_iam_policy_servicedirectory_v1beta1_result.dart';
import 'get_namespace_servicedirectory_v1beta1_args.dart';
import 'get_namespace_servicedirectory_v1beta1_result.dart';
import 'get_namespace_workload_iam_policy_args.dart';
import 'get_namespace_workload_iam_policy_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_service_servicedirectory_v1beta1_args.dart';
import 'get_service_servicedirectory_v1beta1_result.dart';

/// Gets an endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Gets a namespace.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

/// Gets the IAM Policy for a resource (namespace or service only).
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1_get_namespace_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceIamPolicyResult> getNamespaceIamPolicy(
  GetNamespaceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyResult.fromMap(result);
}

/// Gets the IAM Policy for a resource (namespace or service only).
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1_get_namespace_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceServiceIamPolicyResult> getNamespaceServiceIamPolicy(
  GetNamespaceServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyResult.fromMap(result);
}

/// Gets a service.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Gets an endpoint.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_endpoint_servicedirectory_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointServicedirectoryV1beta1Result>
getEndpointServicedirectoryV1beta1(
  GetEndpointServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointServicedirectoryV1beta1Result.fromMap(result);
}

/// Gets a namespace.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_namespace_servicedirectory_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceServicedirectoryV1beta1Result>
getNamespaceServicedirectoryV1beta1(
  GetNamespaceServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServicedirectoryV1beta1Result.fromMap(result);
}

/// Gets the IAM Policy for a resource
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_namespace_iam_policy_servicedirectory_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceIamPolicyServicedirectoryV1beta1Result>
getNamespaceIamPolicyServicedirectoryV1beta1(
  GetNamespaceIamPolicyServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceIamPolicyServicedirectoryV1beta1Result.fromMap(result);
}

/// Gets the IAM Policy for a resource
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_namespace_service_iam_policy_servicedirectory_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceServiceIamPolicyServicedirectoryV1beta1Result>
getNamespaceServiceIamPolicyServicedirectoryV1beta1(
  GetNamespaceServiceIamPolicyServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceServiceIamPolicyServicedirectoryV1beta1Result.fromMap(
    result,
  );
}

/// Gets the IAM Policy for a resource
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_namespace_workload_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceWorkloadIamPolicyResult> getNamespaceWorkloadIamPolicy(
  GetNamespaceWorkloadIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getNamespaceWorkloadIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceWorkloadIamPolicyResult.fromMap(result);
}

/// Gets a service.
/// [args] Arguments passed to this invoke. {@macro pulumi_servicedirectory_v1beta1_get_service_servicedirectory_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceServicedirectoryV1beta1Result>
getServiceServicedirectoryV1beta1(
  GetServiceServicedirectoryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:servicedirectory/v1beta1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceServicedirectoryV1beta1Result.fromMap(result);
}
