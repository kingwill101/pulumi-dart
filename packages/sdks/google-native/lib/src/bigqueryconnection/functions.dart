import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';
import 'get_connection_result.dart';

/// Returns specified connection.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryconnection_v1beta1_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryconnection_v1beta1_get_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigqueryconnection/v1beta1:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}
