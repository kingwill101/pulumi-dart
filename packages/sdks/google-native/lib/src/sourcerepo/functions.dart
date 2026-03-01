import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repo_args.dart';
import 'get_repo_iam_policy_args.dart';
import 'get_repo_iam_policy_result.dart';
import 'get_repo_result.dart';

/// Returns information about a repo.
/// [args] Arguments passed to this invoke. {@macro pulumi_sourcerepo_v1_get_repo_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepoResult> getRepo(
  GetRepoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sourcerepo/v1:getRepo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepoResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_sourcerepo_v1_get_repo_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepoIamPolicyResult> getRepoIamPolicy(
  GetRepoIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sourcerepo/v1:getRepoIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepoIamPolicyResult.fromMap(result);
}
