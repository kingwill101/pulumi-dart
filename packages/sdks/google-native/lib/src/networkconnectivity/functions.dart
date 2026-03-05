import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_args.dart';
import 'get_hub_group_iam_policy_args.dart';
import 'get_hub_group_iam_policy_result.dart';
import 'get_hub_iam_policy_args.dart';
import 'get_hub_iam_policy_networkconnectivity_v1alpha1_args.dart';
import 'get_hub_iam_policy_networkconnectivity_v1alpha1_result.dart';
import 'get_hub_iam_policy_result.dart';
import 'get_hub_networkconnectivity_v1alpha1_args.dart';
import 'get_hub_networkconnectivity_v1alpha1_result.dart';
import 'get_hub_result.dart';
import 'get_internal_range_args.dart';
import 'get_internal_range_iam_policy_args.dart';
import 'get_internal_range_iam_policy_result.dart';
import 'get_internal_range_networkconnectivity_v1alpha1_args.dart';
import 'get_internal_range_networkconnectivity_v1alpha1_result.dart';
import 'get_internal_range_result.dart';
import 'get_policy_based_route_args.dart';
import 'get_policy_based_route_iam_policy_args.dart';
import 'get_policy_based_route_iam_policy_result.dart';
import 'get_policy_based_route_result.dart';
import 'get_service_class_iam_policy_args.dart';
import 'get_service_class_iam_policy_result.dart';
import 'get_service_connection_map_args.dart';
import 'get_service_connection_map_iam_policy_args.dart';
import 'get_service_connection_map_iam_policy_result.dart';
import 'get_service_connection_map_result.dart';
import 'get_service_connection_policy_args.dart';
import 'get_service_connection_policy_iam_policy_args.dart';
import 'get_service_connection_policy_iam_policy_result.dart';
import 'get_service_connection_policy_result.dart';
import 'get_service_connection_token_args.dart';
import 'get_service_connection_token_result.dart';
import 'get_spoke_args.dart';
import 'get_spoke_iam_policy_args.dart';
import 'get_spoke_iam_policy_networkconnectivity_v1alpha1_args.dart';
import 'get_spoke_iam_policy_networkconnectivity_v1alpha1_result.dart';
import 'get_spoke_iam_policy_result.dart';
import 'get_spoke_networkconnectivity_v1alpha1_args.dart';
import 'get_spoke_networkconnectivity_v1alpha1_result.dart';
import 'get_spoke_result.dart';

/// Gets details about a Network Connectivity Center hub.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubResult> getHub(
  GetHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_hub_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubGroupIamPolicyResult> getHubGroupIamPolicy(
  GetHubGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHubGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubGroupIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_hub_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubIamPolicyResult> getHubIamPolicy(
  GetHubIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHubIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubIamPolicyResult.fromMap(result);
}

/// Gets details of a single internal range.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_internal_range_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternalRangeResult> getInternalRange(
  GetInternalRangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getInternalRange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeResult.fromMap(result);
}

/// Gets details of a single policy-based route.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_policy_based_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyBasedRouteResult> getPolicyBasedRoute(
  GetPolicyBasedRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyBasedRouteResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_policy_based_route_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyBasedRouteIamPolicyResult> getPolicyBasedRouteIamPolicy(
  GetPolicyBasedRouteIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRouteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyBasedRouteIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_class_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceClassIamPolicyResult> getServiceClassIamPolicy(
  GetServiceClassIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceClassIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceClassIamPolicyResult.fromMap(result);
}

/// Gets details of a single ServiceConnectionMap.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionMapResult> getServiceConnectionMap(
  GetServiceConnectionMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionMapResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_map_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionMapIamPolicyResult> getServiceConnectionMapIamPolicy(
  GetServiceConnectionMapIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMapIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionMapIamPolicyResult.fromMap(result);
}

/// Gets details of a single ServiceConnectionPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionPolicyResult> getServiceConnectionPolicy(
  GetServiceConnectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionPolicyIamPolicyResult>
getServiceConnectionPolicyIamPolicy(
  GetServiceConnectionPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionPolicyIamPolicyResult.fromMap(result);
}

/// Gets details of a single ServiceConnectionToken.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionTokenResult> getServiceConnectionToken(
  GetServiceConnectionTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceConnectionTokenResult.fromMap(result);
}

/// Gets details about a Network Connectivity Center spoke.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_spoke_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeResult> getSpoke(
  GetSpokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_spoke_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeIamPolicyResult> getSpokeIamPolicy(
  GetSpokeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpokeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeIamPolicyResult.fromMap(result);
}

/// Gets details about a Network Connectivity Center hub.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_hub_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubNetworkconnectivityV1alpha1Result>
getHubNetworkconnectivityV1alpha1(
  GetHubNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubNetworkconnectivityV1alpha1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_hub_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubIamPolicyNetworkconnectivityV1alpha1Result>
getHubIamPolicyNetworkconnectivityV1alpha1(
  GetHubIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHubIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubIamPolicyNetworkconnectivityV1alpha1Result.fromMap(result);
}

/// Gets details of a single internal range.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_internal_range_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternalRangeNetworkconnectivityV1alpha1Result>
getInternalRangeNetworkconnectivityV1alpha1(
  GetInternalRangeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeNetworkconnectivityV1alpha1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_internal_range_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternalRangeIamPolicyResult> getInternalRangeIamPolicy(
  GetInternalRangeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalRangeIamPolicyResult.fromMap(result);
}

/// Gets details about a Network Connectivity Center spoke.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeNetworkconnectivityV1alpha1Result>
getSpokeNetworkconnectivityV1alpha1(
  GetSpokeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeNetworkconnectivityV1alpha1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeIamPolicyNetworkconnectivityV1alpha1Result>
getSpokeIamPolicyNetworkconnectivityV1alpha1(
  GetSpokeIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpokeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeIamPolicyNetworkconnectivityV1alpha1Result.fromMap(result);
}
