import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_center_args.dart';
import 'get_contact_center_result.dart';

/// Gets details of a single ContactCenter.
/// [args] Arguments passed to this invoke. {@macro pulumi_contactcenteraiplatform_v1alpha1_get_contact_center_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactCenterResult> getContactCenter(
  GetContactCenterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenteraiplatform/v1alpha1:getContactCenter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactCenterResult.fromMap(result);
}
