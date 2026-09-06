import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_graph_query_args.dart';
import 'get_graph_query_result.dart';

/// Get a single graph query by its resourceName.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2021-03-01, 2022-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resourcegraph [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcegraph_get_graph_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGraphQueryResult> getGraphQuery(
  GetGraphQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:resourcegraph:getGraphQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGraphQueryResult.fromMap(result);
}

pulumi.Output<GetGraphQueryResult> getGraphQueryOutput(
  GetGraphQueryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:resourcegraph:getGraphQuery',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGraphQueryResult.fromMap);
}
