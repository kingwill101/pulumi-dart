import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hybrid_use_benefit_args.dart';
import 'get_hybrid_use_benefit_result.dart';

/// Gets a given plan ID
///
/// Uses Azure REST API version 2019-12-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_softwareplan_get_hybrid_use_benefit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridUseBenefitResult> getHybridUseBenefit(
  GetHybridUseBenefitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:softwareplan:getHybridUseBenefit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridUseBenefitResult.fromMap(result);
}

pulumi.Output<GetHybridUseBenefitResult> getHybridUseBenefitOutput(
  GetHybridUseBenefitArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:softwareplan:getHybridUseBenefit',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHybridUseBenefitResult.fromMap);
}
