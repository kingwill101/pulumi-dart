import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_saas_subscription_level_args.dart';
import 'get_saas_subscription_level_result.dart';
import 'list_saas_resource_access_token_args.dart';
import 'list_saas_resource_access_token_result.dart';
import 'list_saas_subscription_level_access_token_args.dart';
import 'list_saas_subscription_level_access_token_result.dart';

/// Gets information about the specified Subscription Level SaaS.
///
/// Uses Azure REST API version 2018-03-01-beta.
/// [args] Arguments passed to this invoke. {@macro pulumi_saas_get_saas_subscription_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSaasSubscriptionLevelResult> getSaasSubscriptionLevel(
  GetSaasSubscriptionLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:saas:getSaasSubscriptionLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSaasSubscriptionLevelResult.fromMap(result);
}

/// Gets the ISV access token for a SaaS resource.
///
/// Uses Azure REST API version 2018-03-01-beta.
/// [args] Arguments passed to this invoke. {@macro pulumi_saas_list_saas_resource_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSaasResourceAccessTokenResult> listSaasResourceAccessToken(
  ListSaasResourceAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:saas:listSaasResourceAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSaasResourceAccessTokenResult.fromMap(result);
}

/// Gets the ISV access token for a specified Subscription Level SaaS.
///
/// Uses Azure REST API version 2018-03-01-beta.
/// [args] Arguments passed to this invoke. {@macro pulumi_saas_list_saas_subscription_level_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<ListSaasSubscriptionLevelAccessTokenResult>
listSaasSubscriptionLevelAccessToken(
  ListSaasSubscriptionLevelAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:saas:listSaasSubscriptionLevelAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListSaasSubscriptionLevelAccessTokenResult.fromMap(result);
}
