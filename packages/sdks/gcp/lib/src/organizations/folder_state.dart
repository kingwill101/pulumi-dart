// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  /// Optional capabilities configured for this folder.
  final pulumi.Input<List<String>>? configuredCapabilities;
  /// Timestamp when the Folder was created. Assigned by the server.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
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
  /// [deletionProtection] Optional.
  /// [displayName] The folder’s display name.
  /// [folderId] The folder id from the name "folders/{folder_id}"
  /// [lifecycleState] The lifecycle state of the folder such as `ACTIVE` or `DELETE_REQUESTED`.
  /// [managementProject] Management Project associated with this folder (if capability is enabled).
  /// [name] The resource name of the Folder. Its format is folders/{folder_id}.
  /// [parent] The resource name of the parent Folder or Organization.
  /// [tags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when  mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  FolderState({
    this.configuredCapabilities,
    this.createTime,
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
      configuredCapabilities: map['configuredCapabilities'] == null ? null : ((map['configuredCapabilities'] as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      lifecycleState: map['lifecycleState'] == null ? null : (map['lifecycleState'] as String).input(),
      managementProject: map['managementProject'] == null ? null : (map['managementProject'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

