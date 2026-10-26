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

pulumi.Output<GetHubResult> getHubOutput(
  GetHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubResult.fromMap);
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

pulumi.Output<GetHubGroupIamPolicyResult> getHubGroupIamPolicyOutput(
  GetHubGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHubGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubGroupIamPolicyResult.fromMap);
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

pulumi.Output<GetHubIamPolicyResult> getHubIamPolicyOutput(
  GetHubIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHubIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubIamPolicyResult.fromMap);
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

pulumi.Output<GetInternalRangeResult> getInternalRangeOutput(
  GetInternalRangeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getInternalRange',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternalRangeResult.fromMap);
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

pulumi.Output<GetPolicyBasedRouteResult> getPolicyBasedRouteOutput(
  GetPolicyBasedRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyBasedRouteResult.fromMap);
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

pulumi.Output<GetPolicyBasedRouteIamPolicyResult> getPolicyBasedRouteIamPolicyOutput(
  GetPolicyBasedRouteIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRouteIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyBasedRouteIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceClassIamPolicyResult> getServiceClassIamPolicyOutput(
  GetServiceClassIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceClassIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceClassIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceConnectionMapResult> getServiceConnectionMapOutput(
  GetServiceConnectionMapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceConnectionMapResult.fromMap);
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

pulumi.Output<GetServiceConnectionMapIamPolicyResult> getServiceConnectionMapIamPolicyOutput(
  GetServiceConnectionMapIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionMapIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceConnectionMapIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceConnectionPolicyResult> getServiceConnectionPolicyOutput(
  GetServiceConnectionPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceConnectionPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceConnectionPolicyIamPolicyResult> getServiceConnectionPolicyIamPolicy(
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

pulumi.Output<GetServiceConnectionPolicyIamPolicyResult> getServiceConnectionPolicyIamPolicyOutput(
  GetServiceConnectionPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceConnectionPolicyIamPolicyResult.fromMap);
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

pulumi.Output<GetServiceConnectionTokenResult> getServiceConnectionTokenOutput(
  GetServiceConnectionTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getServiceConnectionToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceConnectionTokenResult.fromMap);
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

pulumi.Output<GetSpokeResult> getSpokeOutput(
  GetSpokeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpoke',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpokeResult.fromMap);
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

pulumi.Output<GetSpokeIamPolicyResult> getSpokeIamPolicyOutput(
  GetSpokeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpokeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpokeIamPolicyResult.fromMap);
}

/// Gets details about a Network Connectivity Center hub.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_hub_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubNetworkconnectivityV1alpha1Result> getHubNetworkconnectivityV1alpha1(
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

pulumi.Output<GetHubNetworkconnectivityV1alpha1Result> getHubNetworkconnectivityV1alpha1Output(
  GetHubNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubNetworkconnectivityV1alpha1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_hub_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubIamPolicyNetworkconnectivityV1alpha1Result> getHubIamPolicyNetworkconnectivityV1alpha1(
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

pulumi.Output<GetHubIamPolicyNetworkconnectivityV1alpha1Result> getHubIamPolicyNetworkconnectivityV1alpha1Output(
  GetHubIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHubIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubIamPolicyNetworkconnectivityV1alpha1Result.fromMap);
}

/// Gets details of a single internal range.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_internal_range_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternalRangeNetworkconnectivityV1alpha1Result> getInternalRangeNetworkconnectivityV1alpha1(
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

pulumi.Output<GetInternalRangeNetworkconnectivityV1alpha1Result> getInternalRangeNetworkconnectivityV1alpha1Output(
  GetInternalRangeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRange',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternalRangeNetworkconnectivityV1alpha1Result.fromMap);
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

pulumi.Output<GetInternalRangeIamPolicyResult> getInternalRangeIamPolicyOutput(
  GetInternalRangeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getInternalRangeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternalRangeIamPolicyResult.fromMap);
}

/// Gets details about a Network Connectivity Center spoke.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeNetworkconnectivityV1alpha1Result> getSpokeNetworkconnectivityV1alpha1(
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

pulumi.Output<GetSpokeNetworkconnectivityV1alpha1Result> getSpokeNetworkconnectivityV1alpha1Output(
  GetSpokeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpoke',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpokeNetworkconnectivityV1alpha1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkconnectivity_v1alpha1_get_spoke_iam_policy_networkconnectivity_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpokeIamPolicyNetworkconnectivityV1alpha1Result> getSpokeIamPolicyNetworkconnectivityV1alpha1(
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

pulumi.Output<GetSpokeIamPolicyNetworkconnectivityV1alpha1Result> getSpokeIamPolicyNetworkconnectivityV1alpha1Output(
  GetSpokeIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpokeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSpokeIamPolicyNetworkconnectivityV1alpha1Result.fromMap);
}
