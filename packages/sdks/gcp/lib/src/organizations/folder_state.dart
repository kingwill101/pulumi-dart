// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// Optional capabilities configured for this folder.
  final pulumi.Input<List<String>>? configuredCapabilities;
  /// Timestamp when the Folder was created. Assigned by the server.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying or recreating the Folder. When the field is set to `true` or unset in Terraform state, a `pulumi up` or `terraform destroy` that would delete the folder will fail. When the field is set to `false`, deleting the folder is allowed. Default value is `true`.
  final pulumi.Input<bool>? deletionProtection;
  /// The folder’s display name.
  /// A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
  final pulumi.Input<String>? displayName;
  /// The folder id from the name "folders/{folder_id}"
  final pulumi.Input<String>? folderId;
  /// The lifecycle state of the folder such as `ACTIVE` or `DELETE_REQUESTED`.
  final pulumi.Input<String>? lifecycleState;
  /// Management Project associated with this folder (if capability is enabled).
  final pulumi.Input<String>? managementProject;
  /// The resource name of the Folder. Its format is folders/{folder_id}.
  final pulumi.Input<String>? name;
  /// The resource name of the parent Folder or Organization.
  /// Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.
  final pulumi.Input<String>? parent;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FolderState].
  /// [configuredCapabilities] Optional capabilities configured for this folder.
  /// [createTime] Timestamp when the Folder was created. Assigned by the server.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] Whether Terraform will be prevented from destroying or recreating the Folder. When the field is set to `true` or unset in Terraform state, a `pulumi up` or `terraform destroy` that would delete the folder will fail. When the field is set to `false`, deleting the folder is allowed. Default value is `true`.
  /// [displayName] The folder’s display name.
  /// [folderId] The folder id from the name "folders/{folder_id}"
  /// [lifecycleState] The lifecycle state of the folder such as `ACTIVE` or `DELETE_REQUESTED`.
  /// [managementProject] Management Project associated with this folder (if capability is enabled).
  /// [name] The resource name of the Folder. Its format is folders/{folder_id}.
  /// [parent] The resource name of the parent Folder or Organization.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  const FolderState({
    this.configuredCapabilities,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.folderId,
    this.lifecycleState,
    this.managementProject,
    this.name,
    this.parent,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuredCapabilities': ?configuredCapabilities,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'folderId': ?folderId,
      'lifecycleState': ?lifecycleState,
      'managementProject': ?managementProject,
      'name': ?name,
      'parent': ?parent,
      'tags': ?tags,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      configuredCapabilities: (() { final guardedValue = map['configuredCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementProject: (() { final guardedValue = map['managementProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
