import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_edge_cache_keyset_iam_policy_args.dart';
import 'get_edge_cache_keyset_iam_policy_result.dart';
import 'get_edge_cache_origin_iam_policy_args.dart';
import 'get_edge_cache_origin_iam_policy_result.dart';
import 'get_edge_cache_service_iam_policy_args.dart';
import 'get_edge_cache_service_iam_policy_result.dart';
import 'get_endpoint_policy_args.dart';
import 'get_endpoint_policy_iam_policy_args.dart';
import 'get_endpoint_policy_iam_policy_networkservices_v1beta1_args.dart';
import 'get_endpoint_policy_iam_policy_networkservices_v1beta1_result.dart';
import 'get_endpoint_policy_iam_policy_result.dart';
import 'get_endpoint_policy_networkservices_v1beta1_args.dart';
import 'get_endpoint_policy_networkservices_v1beta1_result.dart';
import 'get_endpoint_policy_result.dart';
import 'get_gateway_args.dart';
import 'get_gateway_iam_policy_args.dart';
import 'get_gateway_iam_policy_networkservices_v1beta1_args.dart';
import 'get_gateway_iam_policy_networkservices_v1beta1_result.dart';
import 'get_gateway_iam_policy_result.dart';
import 'get_gateway_networkservices_v1beta1_args.dart';
import 'get_gateway_networkservices_v1beta1_result.dart';
import 'get_gateway_result.dart';
import 'get_grpc_route_args.dart';
import 'get_grpc_route_networkservices_v1beta1_args.dart';
import 'get_grpc_route_networkservices_v1beta1_result.dart';
import 'get_grpc_route_result.dart';
import 'get_http_route_args.dart';
import 'get_http_route_networkservices_v1beta1_args.dart';
import 'get_http_route_networkservices_v1beta1_result.dart';
import 'get_http_route_result.dart';
import 'get_lb_route_extension_args.dart';
import 'get_lb_route_extension_result.dart';
import 'get_lb_traffic_extension_args.dart';
import 'get_lb_traffic_extension_result.dart';
import 'get_mesh_args.dart';
import 'get_mesh_iam_policy_args.dart';
import 'get_mesh_iam_policy_networkservices_v1beta1_args.dart';
import 'get_mesh_iam_policy_networkservices_v1beta1_result.dart';
import 'get_mesh_iam_policy_result.dart';
import 'get_mesh_networkservices_v1beta1_args.dart';
import 'get_mesh_networkservices_v1beta1_result.dart';
import 'get_mesh_result.dart';
import 'get_service_binding_args.dart';
import 'get_service_binding_iam_policy_args.dart';
import 'get_service_binding_iam_policy_networkservices_v1beta1_args.dart';
import 'get_service_binding_iam_policy_networkservices_v1beta1_result.dart';
import 'get_service_binding_iam_policy_result.dart';
import 'get_service_binding_networkservices_v1beta1_args.dart';
import 'get_service_binding_networkservices_v1beta1_result.dart';
import 'get_service_binding_result.dart';
import 'get_service_lb_policy_args.dart';
import 'get_service_lb_policy_iam_policy_args.dart';
import 'get_service_lb_policy_iam_policy_result.dart';
import 'get_service_lb_policy_result.dart';
import 'get_tcp_route_args.dart';
import 'get_tcp_route_networkservices_v1beta1_args.dart';
import 'get_tcp_route_networkservices_v1beta1_result.dart';
import 'get_tcp_route_result.dart';
import 'get_tls_route_args.dart';
import 'get_tls_route_networkservices_v1beta1_args.dart';
import 'get_tls_route_networkservices_v1beta1_result.dart';
import 'get_tls_route_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_edge_cache_keyset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeCacheKeysetIamPolicyResult> getEdgeCacheKeysetIamPolicy(
  GetEdgeCacheKeysetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheKeysetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeCacheKeysetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEdgeCacheKeysetIamPolicyResult> getEdgeCacheKeysetIamPolicyOutput(
  GetEdgeCacheKeysetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheKeysetIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeCacheKeysetIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_edge_cache_origin_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeCacheOriginIamPolicyResult> getEdgeCacheOriginIamPolicy(
  GetEdgeCacheOriginIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheOriginIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeCacheOriginIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEdgeCacheOriginIamPolicyResult> getEdgeCacheOriginIamPolicyOutput(
  GetEdgeCacheOriginIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheOriginIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeCacheOriginIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_edge_cache_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeCacheServiceIamPolicyResult> getEdgeCacheServiceIamPolicy(
  GetEdgeCacheServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeCacheServiceIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEdgeCacheServiceIamPolicyResult> getEdgeCacheServiceIamPolicyOutput(
  GetEdgeCacheServiceIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEdgeCacheServiceIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeCacheServiceIamPolicyResult.fromMap);
}

/// Gets details of a single EndpointPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_endpoint_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointPolicyResult> getEndpointPolicy(
  GetEndpointPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyResult.fromMap(result);
}

pulumi.Output<GetEndpointPolicyResult> getEndpointPolicyOutput(
  GetEndpointPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_endpoint_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointPolicyIamPolicyResult> getEndpointPolicyIamPolicy(
  GetEndpointPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEndpointPolicyIamPolicyResult> getEndpointPolicyIamPolicyOutput(
  GetEndpointPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointPolicyIamPolicyResult.fromMap);
}

/// Gets details of a single Gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

pulumi.Output<GetGatewayResult> getGatewayOutput(
  GetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_gateway_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayIamPolicyResult> getGatewayIamPolicy(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyResult.fromMap(result);
}

pulumi.Output<GetGatewayIamPolicyResult> getGatewayIamPolicyOutput(
  GetGatewayIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayIamPolicyResult.fromMap);
}

/// Gets details of a single GrpcRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_grpc_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGrpcRouteResult> getGrpcRoute(
  GetGrpcRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGrpcRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrpcRouteResult.fromMap(result);
}

pulumi.Output<GetGrpcRouteResult> getGrpcRouteOutput(
  GetGrpcRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getGrpcRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGrpcRouteResult.fromMap);
}

/// Gets details of a single HttpRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_http_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpRouteResult> getHttpRoute(
  GetHttpRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getHttpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteResult.fromMap(result);
}

pulumi.Output<GetHttpRouteResult> getHttpRouteOutput(
  GetHttpRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getHttpRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHttpRouteResult.fromMap);
}

/// Gets details of a single Mesh.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_mesh_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshResult> getMesh(
  GetMeshArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshResult.fromMap(result);
}

pulumi.Output<GetMeshResult> getMeshOutput(
  GetMeshArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getMesh',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_mesh_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshIamPolicyResult> getMeshIamPolicy(
  GetMeshIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getMeshIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshIamPolicyResult.fromMap(result);
}

pulumi.Output<GetMeshIamPolicyResult> getMeshIamPolicyOutput(
  GetMeshIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getMeshIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshIamPolicyResult.fromMap);
}

/// Gets details of a single ServiceBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_service_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBindingResult> getServiceBinding(
  GetServiceBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingResult.fromMap(result);
}

pulumi.Output<GetServiceBindingResult> getServiceBindingOutput(
  GetServiceBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBindingResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_service_binding_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBindingIamPolicyResult> getServiceBindingIamPolicy(
  GetServiceBindingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBindingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceBindingIamPolicyResult> getServiceBindingIamPolicyOutput(
  GetServiceBindingIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getServiceBindingIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBindingIamPolicyResult.fromMap);
}

/// Gets details of a single TcpRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_tcp_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTcpRouteResult> getTcpRoute(
  GetTcpRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTcpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteResult.fromMap(result);
}

pulumi.Output<GetTcpRouteResult> getTcpRouteOutput(
  GetTcpRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTcpRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTcpRouteResult.fromMap);
}

/// Gets details of a single TlsRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1_get_tls_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsRouteResult> getTlsRoute(
  GetTlsRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTlsRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteResult.fromMap(result);
}

pulumi.Output<GetTlsRouteResult> getTlsRouteOutput(
  GetTlsRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTlsRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTlsRouteResult.fromMap);
}

/// Gets details of a single EndpointPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_endpoint_policy_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointPolicyNetworkservicesV1beta1Result> getEndpointPolicyNetworkservicesV1beta1(
  GetEndpointPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetEndpointPolicyNetworkservicesV1beta1Result> getEndpointPolicyNetworkservicesV1beta1Output(
  GetEndpointPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointPolicyNetworkservicesV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_endpoint_policy_iam_policy_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result> getEndpointPolicyIamPolicyNetworkservicesV1beta1(
  GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result> getEndpointPolicyIamPolicyNetworkservicesV1beta1Output(
  GetEndpointPolicyIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointPolicyIamPolicyNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single Gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_gateway_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayNetworkservicesV1beta1Result> getGatewayNetworkservicesV1beta1(
  GetGatewayNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetGatewayNetworkservicesV1beta1Result> getGatewayNetworkservicesV1beta1Output(
  GetGatewayNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayNetworkservicesV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_gateway_iam_policy_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayIamPolicyNetworkservicesV1beta1Result> getGatewayIamPolicyNetworkservicesV1beta1(
  GetGatewayIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGatewayIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetGatewayIamPolicyNetworkservicesV1beta1Result> getGatewayIamPolicyNetworkservicesV1beta1Output(
  GetGatewayIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGatewayIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGatewayIamPolicyNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single GrpcRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_grpc_route_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGrpcRouteNetworkservicesV1beta1Result> getGrpcRouteNetworkservicesV1beta1(
  GetGrpcRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGrpcRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGrpcRouteNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetGrpcRouteNetworkservicesV1beta1Result> getGrpcRouteNetworkservicesV1beta1Output(
  GetGrpcRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getGrpcRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGrpcRouteNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single HttpRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_http_route_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpRouteNetworkservicesV1beta1Result> getHttpRouteNetworkservicesV1beta1(
  GetHttpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getHttpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetHttpRouteNetworkservicesV1beta1Result> getHttpRouteNetworkservicesV1beta1Output(
  GetHttpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getHttpRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHttpRouteNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of the specified `LbRouteExtension` resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_lb_route_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLbRouteExtensionResult> getLbRouteExtension(
  GetLbRouteExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbRouteExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbRouteExtensionResult.fromMap(result);
}

pulumi.Output<GetLbRouteExtensionResult> getLbRouteExtensionOutput(
  GetLbRouteExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbRouteExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLbRouteExtensionResult.fromMap);
}

/// Gets details of the specified `LbTrafficExtension` resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_lb_traffic_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLbTrafficExtensionResult> getLbTrafficExtension(
  GetLbTrafficExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbTrafficExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbTrafficExtensionResult.fromMap(result);
}

pulumi.Output<GetLbTrafficExtensionResult> getLbTrafficExtensionOutput(
  GetLbTrafficExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getLbTrafficExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLbTrafficExtensionResult.fromMap);
}

/// Gets details of a single Mesh.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_mesh_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshNetworkservicesV1beta1Result> getMeshNetworkservicesV1beta1(
  GetMeshNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMesh',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetMeshNetworkservicesV1beta1Result> getMeshNetworkservicesV1beta1Output(
  GetMeshNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMesh',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshNetworkservicesV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_mesh_iam_policy_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshIamPolicyNetworkservicesV1beta1Result> getMeshIamPolicyNetworkservicesV1beta1(
  GetMeshIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMeshIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetMeshIamPolicyNetworkservicesV1beta1Result> getMeshIamPolicyNetworkservicesV1beta1Output(
  GetMeshIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getMeshIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshIamPolicyNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single ServiceBinding.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_service_binding_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBindingNetworkservicesV1beta1Result> getServiceBindingNetworkservicesV1beta1(
  GetServiceBindingNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetServiceBindingNetworkservicesV1beta1Result> getServiceBindingNetworkservicesV1beta1Output(
  GetServiceBindingNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBindingNetworkservicesV1beta1Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_service_binding_iam_policy_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceBindingIamPolicyNetworkservicesV1beta1Result> getServiceBindingIamPolicyNetworkservicesV1beta1(
  GetServiceBindingIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBindingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBindingIamPolicyNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetServiceBindingIamPolicyNetworkservicesV1beta1Result> getServiceBindingIamPolicyNetworkservicesV1beta1Output(
  GetServiceBindingIamPolicyNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceBindingIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceBindingIamPolicyNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single ServiceLbPolicy.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLbPolicyResult> getServiceLbPolicy(
  GetServiceLbPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLbPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceLbPolicyResult> getServiceLbPolicyOutput(
  GetServiceLbPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceLbPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLbPolicyIamPolicyResult> getServiceLbPolicyIamPolicy(
  GetServiceLbPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLbPolicyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceLbPolicyIamPolicyResult> getServiceLbPolicyIamPolicyOutput(
  GetServiceLbPolicyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getServiceLbPolicyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceLbPolicyIamPolicyResult.fromMap);
}

/// Gets details of a single TcpRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_tcp_route_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTcpRouteNetworkservicesV1beta1Result> getTcpRouteNetworkservicesV1beta1(
  GetTcpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTcpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetTcpRouteNetworkservicesV1beta1Result> getTcpRouteNetworkservicesV1beta1Output(
  GetTcpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTcpRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTcpRouteNetworkservicesV1beta1Result.fromMap);
}

/// Gets details of a single TlsRoute.
/// [args] Arguments passed to this invoke. {@macro pulumi_networkservices_v1beta1_get_tls_route_networkservices_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTlsRouteNetworkservicesV1beta1Result> getTlsRouteNetworkservicesV1beta1(
  GetTlsRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTlsRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteNetworkservicesV1beta1Result.fromMap(result);
}

pulumi.Output<GetTlsRouteNetworkservicesV1beta1Result> getTlsRouteNetworkservicesV1beta1Output(
  GetTlsRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTlsRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTlsRouteNetworkservicesV1beta1Result.fromMap);
}
