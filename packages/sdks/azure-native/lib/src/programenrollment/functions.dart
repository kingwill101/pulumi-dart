import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_edu_enrollment_args.dart';
import 'get_edu_enrollment_result.dart';

/// Gets the specified edu enrollment.
///
/// Uses Azure REST API version 2026-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_programenrollment_get_edu_enrollment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEduEnrollmentResult> getEduEnrollment(
  GetEduEnrollmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:programenrollment:getEduEnrollment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEduEnrollmentResult.fromMap(result);
}

pulumi.Output<GetEduEnrollmentResult> getEduEnrollmentOutput(
  GetEduEnrollmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:programenrollment:getEduEnrollment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEduEnrollmentResult.fromMap);
}
