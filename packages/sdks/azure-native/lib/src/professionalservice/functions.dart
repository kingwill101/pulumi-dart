import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_professional_service_subscription_level_args.dart';
import 'get_professional_service_subscription_level_result.dart';

/// Gets information about the specified Subscription Level ProfessionalService.
///
/// Uses Azure REST API version 2023-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_professionalservice_get_professional_service_subscription_level_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfessionalServiceSubscriptionLevelResult>
getProfessionalServiceSubscriptionLevel(
  GetProfessionalServiceSubscriptionLevelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:professionalservice:getProfessionalServiceSubscriptionLevel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfessionalServiceSubscriptionLevelResult.fromMap(result);
}
