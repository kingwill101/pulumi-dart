import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_policy_args.dart';
import 'get_data_policy_iam_policy_args.dart';
import 'get_data_policy_iam_policy_result.dart';
import 'get_data_policy_result.dart';

/// Gets the data policy specified by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquerydatapolicy_v1_get_data_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataPolicyResult> getDataPolicy(
  GetDataPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatapolicy/v1:getDataPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataPolicyResult.fromMap(result);
}

/// Gets the IAM policy for the specified data policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_bigquerydatapolicy_v1_get_data_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataPolicyIamPolicyResult> getDataPolicyIamPolicy(
  GetDataPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatapolicy/v1:getDataPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataPolicyIamPolicyResult.fromMap(result);
}
