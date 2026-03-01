import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_args.dart';
import 'get_contact_result.dart';
import 'get_folder_contact_args.dart';
import 'get_folder_contact_result.dart';
import 'get_organization_contact_args.dart';
import 'get_organization_contact_result.dart';

/// Gets a single contact.
/// [args] Arguments passed to this invoke. {@macro pulumi_essentialcontacts_v1_get_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}

/// Gets a single contact.
/// [args] Arguments passed to this invoke. {@macro pulumi_essentialcontacts_v1_get_folder_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderContactResult> getFolderContact(
  GetFolderContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getFolderContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderContactResult.fromMap(result);
}

/// Gets a single contact.
/// [args] Arguments passed to this invoke. {@macro pulumi_essentialcontacts_v1_get_organization_contact_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationContactResult> getOrganizationContact(
  GetOrganizationContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getOrganizationContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationContactResult.fromMap(result);
}
