import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_blockchain_node_args.dart';
import 'get_blockchain_node_result.dart';

/// Gets details of a single blockchain node.
/// [args] Arguments passed to this invoke. {@macro pulumi_blockchainnodeengine_v1_get_blockchain_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlockchainNodeResult> getBlockchainNode(
  GetBlockchainNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:blockchainnodeengine/v1:getBlockchainNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlockchainNodeResult.fromMap(result);
}
