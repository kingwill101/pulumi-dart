// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_organizations_folder_folder_args_doc}
class FolderArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying or recreating the Folder. When the field is set to `true` or unset in Terraform state, a `pulumi up` or `terraform destroy` that would delete the folder will fail. When the field is set to `false`, deleting the folder is allowed. Default value is `true`.
  final pulumi.Input<bool?>? deletionProtection;
  /// The folder’s display name.
  /// A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
  final pulumi.Input<String> displayName;
  /// The resource name of the parent Folder or Organization.
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  final pulumi.Input<String> parent;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FolderArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] Whether Terraform will be prevented from destroying or recreating the Folder. When the field is set to `true` or unset in Terraform state, a `pulumi up` or `terraform destroy` that would delete the folder will fail. When the field is set to `false`, deleting the folder is allowed. Default value is `true`.
  /// [displayName] The folder’s display name.
  /// [parent] The resource name of the parent Folder or Organization.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  const FolderArgs({
    this.deletionPolicy,
    this.deletionProtection,
    required this.displayName,
    required this.parent,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': displayName,
      'parent': parent,
      'tags': ?tags,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
