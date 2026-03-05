import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_args.dart';
import 'get_folder_cloudresourcemanager_v2beta1_args.dart';
import 'get_folder_cloudresourcemanager_v2beta1_result.dart';
import 'get_folder_cloudresourcemanager_v3_args.dart';
import 'get_folder_cloudresourcemanager_v3_result.dart';
import 'get_folder_iam_policy_args.dart';
import 'get_folder_iam_policy_cloudresourcemanager_v2beta1_args.dart';
import 'get_folder_iam_policy_cloudresourcemanager_v2beta1_result.dart';
import 'get_folder_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_folder_iam_policy_cloudresourcemanager_v3_result.dart';
import 'get_folder_iam_policy_result.dart';
import 'get_folder_result.dart';
import 'get_lien_args.dart';
import 'get_lien_cloudresourcemanager_v3_args.dart';
import 'get_lien_cloudresourcemanager_v3_result.dart';
import 'get_lien_result.dart';
import 'get_organization_iam_policy_args.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v1beta1_args.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v1beta1_result.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_organization_iam_policy_cloudresourcemanager_v3_result.dart';
import 'get_organization_iam_policy_result.dart';
import 'get_project_args.dart';
import 'get_project_cloudresourcemanager_v1beta1_args.dart';
import 'get_project_cloudresourcemanager_v1beta1_result.dart';
import 'get_project_cloudresourcemanager_v3_args.dart';
import 'get_project_cloudresourcemanager_v3_result.dart';
import 'get_project_iam_policy_args.dart';
import 'get_project_iam_policy_cloudresourcemanager_v1beta1_args.dart';
import 'get_project_iam_policy_cloudresourcemanager_v1beta1_result.dart';
import 'get_project_iam_policy_cloudresourcemanager_v3_args.dart';
import 'get_project_iam_policy_cloudresourcemanager_v3_result.dart';
import 'get_project_iam_policy_result.dart';
import 'get_project_result.dart';
import 'get_tag_key_args.dart';
import 'get_tag_key_iam_policy_args.dart';
import 'get_tag_key_iam_policy_result.dart';
import 'get_tag_key_result.dart';
import 'get_tag_value_args.dart';
import 'get_tag_value_iam_policy_args.dart';
import 'get_tag_value_iam_policy_result.dart';
import 'get_tag_value_result.dart';

/// Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1_get_lien_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLienResult> getLien(
  GetLienArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getLien',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLienResult.fromMap(result);
}

/// Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. "organizations/123". Authorization requires the Google IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1_get_organization_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationIamPolicyResult> getOrganizationIamPolicy(
  GetOrganizationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getOrganizationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyResult.fromMap(result);
}

/// Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. Authorization requires the Google IAM permission `resourcemanager.projects.getIamPolicy` on the project. For additional information about `resource` (e.g. my-project-id) structure and identification, see [Resource Names](https://cloud.google.com/apis/design/resource_names).
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1_get_project_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectIamPolicyResult> getProjectIamPolicy(
  GetProjectIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1:getProjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for an Organization resource. May be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, e.g. "organizations/123".
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1beta1_get_organization_iam_policy_cloudresourcemanager_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationIamPolicyCloudresourcemanagerV1beta1Result>
getOrganizationIamPolicyCloudresourcemanagerV1beta1(
  GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getOrganizationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyCloudresourcemanagerV1beta1Result.fromMap(
    result,
  );
}

/// Retrieves the Project identified by the specified `project_id` (for example, `my-project-123`). The caller must have read permissions for this Project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1beta1_get_project_cloudresourcemanager_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCloudresourcemanagerV1beta1Result>
getProjectCloudresourcemanagerV1beta1(
  GetProjectCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCloudresourcemanagerV1beta1Result.fromMap(result);
}

/// Returns the IAM access control policy for the specified Project. Permission is denied if the policy or the resource does not exist. For additional information about resource structure and identification, see [Resource Names](/apis/design/resource_names).
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v1beta1_get_project_iam_policy_cloudresourcemanager_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectIamPolicyCloudresourcemanagerV1beta1Result>
getProjectIamPolicyCloudresourcemanagerV1beta1(
  GetProjectIamPolicyCloudresourcemanagerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v1beta1:getProjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyCloudresourcemanagerV1beta1Result.fromMap(result);
}

/// Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v2_get_folder_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderResult> getFolder(
  GetFolderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderResult.fromMap(result);
}

/// Gets the access control policy for a Folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the Folder's resource name, e.g. "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v2_get_folder_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderIamPolicyResult> getFolderIamPolicy(
  GetFolderIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2:getFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyResult.fromMap(result);
}

/// Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v2beta1_get_folder_cloudresourcemanager_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderCloudresourcemanagerV2beta1Result>
getFolderCloudresourcemanagerV2beta1(
  GetFolderCloudresourcemanagerV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2beta1:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderCloudresourcemanagerV2beta1Result.fromMap(result);
}

/// Gets the access control policy for a Folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the Folder's resource name, e.g. "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v2beta1_get_folder_iam_policy_cloudresourcemanager_v2beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderIamPolicyCloudresourcemanagerV2beta1Result>
getFolderIamPolicyCloudresourcemanagerV2beta1(
  GetFolderIamPolicyCloudresourcemanagerV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v2beta1:getFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyCloudresourcemanagerV2beta1Result.fromMap(result);
}

/// Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_folder_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderCloudresourcemanagerV3Result> getFolderCloudresourcemanagerV3(
  GetFolderCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolder',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderCloudresourcemanagerV3Result.fromMap(result);
}

/// Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the folder's resource name, for example: "folders/1234". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_folder_iam_policy_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderIamPolicyCloudresourcemanagerV3Result>
getFolderIamPolicyCloudresourcemanagerV3(
  GetFolderIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getFolderIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}

/// Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_lien_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLienCloudresourcemanagerV3Result> getLienCloudresourcemanagerV3(
  GetLienCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getLien',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLienCloudresourcemanagerV3Result.fromMap(result);
}

/// Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, for example: "organizations/123". Authorization requires the IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_organization_iam_policy_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationIamPolicyCloudresourcemanagerV3Result>
getOrganizationIamPolicyCloudresourcemanagerV3(
  GetOrganizationIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getOrganizationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}

/// Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). The caller must have `resourcemanager.projects.get` permission for this project.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_project_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCloudresourcemanagerV3Result> getProjectCloudresourcemanagerV3(
  GetProjectCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCloudresourcemanagerV3Result.fromMap(result);
}

/// Returns the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. Permission is denied if the policy or the resource do not exist.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_project_iam_policy_cloudresourcemanager_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectIamPolicyCloudresourcemanagerV3Result>
getProjectIamPolicyCloudresourcemanagerV3(
  GetProjectIamPolicyCloudresourcemanagerV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getProjectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIamPolicyCloudresourcemanagerV3Result.fromMap(result);
}

/// Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key does not exist or the user does not have permission to view it.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_tag_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagKeyResult> getTagKey(
  GetTagKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagKeyResult.fromMap(result);
}

/// Gets the access control policy for a TagKey. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagKey's resource name. For example, "tagKeys/1234". The caller must have `cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on the specified TagKey.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_tag_key_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagKeyIamPolicyResult> getTagKeyIamPolicy(
  GetTagKeyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagKeyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagKeyIamPolicyResult.fromMap(result);
}

/// Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value does not exist or the user does not have permission to view it.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_tag_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagValueResult> getTagValue(
  GetTagValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagValueResult.fromMap(result);
}

/// Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have the `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on the identified TagValue to get the access control policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudresourcemanager_v3_get_tag_value_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagValueIamPolicyResult> getTagValueIamPolicy(
  GetTagValueIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudresourcemanager/v3:getTagValueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagValueIamPolicyResult.fromMap(result);
}
