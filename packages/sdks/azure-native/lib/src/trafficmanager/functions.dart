import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_profile_args.dart';
import 'get_profile_result.dart';
import 'get_traffic_manager_user_metrics_key_result.dart';

/// Gets a Traffic Manager endpoint.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2015-11-01, 2017-03-01, 2017-05-01, 2018-02-01, 2018-03-01, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_trafficmanager_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:trafficmanager:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Gets a Traffic Manager profile.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2015-11-01, 2017-03-01, 2017-05-01, 2018-02-01, 2018-03-01, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_trafficmanager_get_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  GetProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:trafficmanager:getProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}

/// Get the subscription-level key used for Real User Metrics collection.
///
/// Uses Azure REST API version 2022-04-01.
///
/// Other available API versions: 2017-09-01-preview, 2018-04-01, 2018-08-01, 2022-04-01-preview, 2024-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native trafficmanager [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [options] Invoke options controlling this call.
Future<GetTrafficManagerUserMetricsKeyResult> getTrafficManagerUserMetricsKey(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:trafficmanager:getTrafficManagerUserMetricsKey',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficManagerUserMetricsKeyResult.fromMap(result);
}
