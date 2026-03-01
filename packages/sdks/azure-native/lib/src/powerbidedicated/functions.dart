import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auto_scale_vcore_args.dart';
import 'get_auto_scale_vcore_result.dart';
import 'get_capacity_details_args.dart';
import 'get_capacity_details_result.dart';

/// Gets details about the specified auto scale v-core.
///
/// Uses Azure REST API version 2021-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerbidedicated_get_auto_scale_vcore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoScaleVCoreResult> getAutoScaleVCore(
  GetAutoScaleVCoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerbidedicated:getAutoScaleVCore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoScaleVCoreResult.fromMap(result);
}

/// Gets details about the specified dedicated capacity.
///
/// Uses Azure REST API version 2021-01-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_powerbidedicated_get_capacity_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityDetailsResult> getCapacityDetails(
  GetCapacityDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:powerbidedicated:getCapacityDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityDetailsResult.fromMap(result);
}
